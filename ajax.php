<?php
require_once "config.php";
require_once "database.php";
require_once "functions.php";
$playlist = new playlist;
$musics = new musics;
$status = new status;
$sugestions = new suggestions;
$user = new user;

if(isset($_GET['song'])){
  $key=$_GET['song'];
  $array = array();
  $key = "%".$key."%";
  $sql = $conn->prepare("select * from musics where title LIKE ? LIMIT 5");
  $sql->bind_param('s',$key);//Prevent MySQL injection! =/
  $sql->execute();
  $sql = $sql->get_result();
  $i=0;
  while($row=$sql->fetch_assoc())
  {
    $array["songs"][$i]["name"] = $row["title"];
    $array["songs"][$i]["s_id"] = $row["id"];
    $i++;
  }
  echo json_encode($array);
}else if(isset($_GET["pls"])){
  $plname = $_GET["pls"];
  $pls = $playlist->get_byname($plname);
  $songs = json_decode($pls["songs"]);
  $pls = [];
  $currentsong = $status->get("pls_0");//pega a música atual da playlist de $_GET
  $i = 0;
  $pls["currentsong"] = $currentsong;
  for($x=$currentsong-3;$x<=$currentsong+3;$x++){
    if(isset($songs[$x])){
      $song_id = $songs[$x];
      $name = $musics->get_byid($song_id)["title"];
      $inpls = $x; //id dentro da playlist ex: música nro 10
      $pls["songs"][$i]["id"] = $song_id;
      $pls["songs"][$i]["name"] = $name;
      $pls["songs"][$i]["inpls"] = $inpls;
        $i++;
    }
  }
  echo json_encode($pls);
}else if(isset($_GET["playsong"])){//colocar como a próxima da playlist
  $song_id = $_GET["playsong"];
  $status = addtopls($song_id);
  $return["response"] = $status;
  echo json_encode($return);
}else if(isset($_GET["addsong"])){//adicionar nova música
  $name = $_GET["addsong"];
  $url = $_GET["url"];
  $status = add_music($name,$url);
  $return["response"] = $status;
  echo json_encode($return);
}else if(isset($_GET["removesong"])){
  $song_id = $_GET["removesong"];
  $status = removemusic($song_id);
  $return["response"] = $status;
  echo json_encode($return);
}else if(isset($_GET["removefrompls"])){
  $in_pls_id = $_GET["removefrompls"];
  $status = removefrompls($in_pls_id);
  $return["response"] = $status;
  echo json_encode($return);
}else if(isset($_GET["getsugestions"])){
  global $sugestions;
  global $user;
  $ret = $sugestions->getall();
  if($ret!=0){
    $i = 0;
    foreach($ret as $r){
      $username = $user->get_byid($r["user_id"])["name"];
      $ret[$i]["name"] = $username;
      $url = $r["value"];
      $parts = parse_url($url);
      parse_str($parts['query'], $query);
      $ret[$i]["videoid"] = $query['v'];

      $i++;
    }
  }
  $return["response"] = $ret;
  echo json_encode($return);
}else if(isset($_GET["updatesugestion"])){
  global $sugestions;
  $sg_id = $_GET["updatesugestion"];
  $act = $_GET["act"];
  $return["response"] = $sugestions->status($sg_id,$act);
  echo json_encode($return);
}else if(isset($_GET["sugerir"])){
  global $suggestions;
  $mode = $_GET["sugerir"];
  $music = $_GET["music"];
  $token = $_GET["token"];
  $tokens = new tokens;
  $userid = $tokens->get($token)["user_id"];
  $me = $suggestions->me($userid);
  $time = time() - $me["data"];
  if($time<sugestions_time){
    $remain = (sugestions_time - $time)/3600;//calcula o tempo desde o último pedido em horas
    $remain = number_format((float)$remain, 2, '.', '');//2 casas após a vírgula
    $ret = "Você deve esperar: ".$remain." hora(s) para pedir outra música!";
  }else{
    global $suggestions;
    global $musics;
    if($mode==1&&$musics->get_byid($music)!=0){//se encontrou a música na DB
      $suggestions->add($userid,$music,$mode);
      addtopls($music);
      $ret = "A sua música foi adicionada com sucesso e será tocada em breve =D";
    }else if($mode==2){
      $suggestions->add($userid,$music,$mode);
      $ret = "O seu pedido foi recebido e será analisado por um administrador!";
    }
  }
  $return["response"] = $ret;
  echo json_encode($return);
}
?>
