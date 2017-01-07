<?php
require_once "config.php";
require_once "database.php";
$musics = new musics;
$playlist = new playlist;
$status = new status;
$config = new config;
$ads = new ads;
$suggestions = new suggestions;



function add_music($title,$url){
  global $musics;
  parse_str(parse_url($url)["query"],$videoid);
  $videoid = $videoid["v"];
  $status = download_music($videoid);
  if($status==1){//se o servidor realizou o download da música
    if($musics->add($videoid,$title)){
      addtopls($videoid);//após colocar na DB coloca como próxima da playlist
      return 1;
    }else{
      return "Erro ao adicionar na DB";
    }
  }else{
    return $status;
  }
}

function getsong($retry=false){
  global $playlist;
  global $status;
  global $musics;
  //$retry significa que o sistema voltou para tentar buscar a próxima música então o anúncio é ignorado
  if($retry == false && its_adstime() && $ad = get_ads()){//se for hora de inserir anúncio e houver um disponível
    return array("ads"=>"true","url"=>ads_location.$ad.".mp3");//mostra o anúncio
  }else{
    $pls = json_decode($playlist->get_byid("0")["songs"]);//pega a playlist
    $current_song = $status->get("pls_0");
    if($current_song+1>=sizeof($pls)){//se a playlist acabou
      gerarpls();
      $status->get("pls_0","0");
      $current_song = "new";//indica que a playlist é nova
      $pls = json_decode($playlist->get_byid("0")["songs"]);//pega a nova playlist gerada
    }

    if($current_song=="new"){//correção do bug:
      $current_song = 0;//se a playlist é nova, começa na música 0
      $play_id = $pls[$current_song];
    }else{//se não, pega a próxima música||Antes sempre começava na música 1
      $current_song++;
      $play_id = $pls[$current_song];
    }
    $status->get("pls_0",$current_song);
    if(!last_five($play_id) || $play_id == "deleted"){//se já foi tocada ou foi apagada
      return getsong(true);//pega a próxima música
    }else{
      $ret = [];
      $ret["ads"] = "false";
      $ret["name"] = $musics->get_byid($play_id)["title"];
      $ret["url"] = musics_location.$play_id.".mp3";
      return $ret;
    }
  }
}

function gerarpls(){
  global $musics;
  global $playlist;
  global $status;
  $songs = $musics->get_all();//pega todas as músicas na DB
  $pls = [];
  foreach($songs as $song){//Põe cada música em uma slot na array
    $pls[] = $song["id"];
  }
  shuffle($pls);//mistura a ordem das músicas na array
  $pls = json_encode($pls);
  $playlist->update(0,$pls);//coloca a nova playlist na DB
  $status->get("pls_0","0");//música atual agora é a 0
}

function last_five($id){//últimas 5 tocadas
  global $status;
  global $musics;
  $ammount = $musics->ammount();
  if($ammount>5){//previne bug que entre em loop infinito caso houver menos de 6 músicas
    $l5 = json_decode($status->get("last_five"));
    if(!in_array($id,$l5)){//se não foi tocada nas últimas 5 vezes
      array_shift($l5);
      $l5[4] = $id;
      $l5 = json_encode($l5);
      $status->get("last_five",$l5);
      return 1;
    }else{
      return 1;//anotação: preciso colocar 0 aqui!!!!!!!!!!!
    }
  }else{
    return 1;
  }
}

function get_ads(){
  global $status;
  global $ads;
  $ads_pls = json_decode($status->get("ads_pls"));
  if(!isset($ads_pls[0])){//se a playlist de anúncios acabou
    $adss = $ads->get_actives();//pega os anúncios ativos
    if($adss){
      $arr = [];
      foreach($adss as $ad){
        $arr[] = array("id"=>$ad["id"],"freq"=>$ad["freq"]);
      }
      $ads = json_encode(gen_ads($arr));//gera uma nova playlist de anúncios
      $ads_pls = json_decode($ads);
      $status->get("ads_pls",$ads);
    }else{//se não há anúncios disponíveis
      return 0;
    }
  }
  $ret = $ads_pls[0];//pega a id do próximo anúncio a ser reproduzido
  array_shift($ads_pls);
  $ads_pls = json_encode($ads_pls);
  $status->get("ads_pls",$ads_pls);

  $ads = new ads;
  $adinfo = $ads->get_byid($ret);//pega o anúncio com base na id do mesmo
  $times = $adinfo["times"];
  if($times<=0){//se times tiver acabado mas o anúncio ainda está na playlist
    return get_ads();//tenta pegar o próximo
  }
  $times--;//retira 1 de crédito
  $id = $adinfo["id"];
  $ads->update($id,"times",$times);//salva na DB
  $value = $adinfo["value"];
  return $value;
}

function gen_ads($arr){//Gerar playlist de anúncios com base na frequência
  //$arr = array 2d
  //$arr[] = array("id"=>"a","freq"=>"2");
  if(is_array($arr)){
    $slots = 20;
    $total = 0;
    foreach($arr as $ad){//soma o total de frequência
      $total += $ad["freq"];
    }
    $aa = [];
    foreach($arr as $ad){//calcula a porcentagem de cada um em relação ao total de frequência
      $aa[] = $ad["freq"]*100/$total;
    }
    $bb = [];
    $total = 0;
    foreach($aa as $a){//calcula o n. de slots para cada um baseado na porcentagem
      $val = floor($slots*$a/100);
      $bb[] = $val;
      $total += $val;
    }
    $pls = [];
    for($i=0;$i<sizeof($bb);$i++){//gera a playlist de anúncios com as ids e sua respectiva quantidade
      while($bb[$i]>0){
        $pls[] = $arr[$i]["id"];
        $bb[$i]--;
      }
    }
    shuffle($pls);
    return $pls;
  }else{
    return 0;
  }
}

function its_adstime(){//é hora de mostrar um anúncio?
  global $config;
  global $status;
  $interval = $config->get("ads_interval");
  $current = $status->get("ads_interval");
  if($current>=$interval){//se estiver na hora de mostrar um anúncio
    $status->get("ads_interval","0");
    return 1;//sim
  }else{
    $current++;
    $status->get("ads_interval",$current);
    return 0;//ainda não
  }
}

function getnext(){
  $pls = getpls();
  $pls = json_decode($pls["songs"]);
  $status = getstatus()[0];
  $last_song = $status["curr_song"];
  if($last_song==sizeof($pls)-1){//se a playlist acabou
    gerarpls();
    updatestatus(0,0,time());
    $last_song = 0;
  }else{
    $last_song++;
    updatestatus(0,$last_song,time());
  }
  $pls = getpls();
  $pls = json_decode($pls[0]["songs"]);
  $return[1] = serverurl.$pls[$last_song].".mp3";
  $return[0] = getsong($pls[$last_song])[0]["name"];
  if($status["tmb_changed"]==0){
    $tmb = 0;
  }else{
    $tmb = array("url" => $status["tmb_url"]);
    $tmb = json_encode($tmb);
  }
  $return[2] = $tmb;
  return $return;
}

function addtopls($music_id){
  global $playlist;
  global $status;
  $pls = json_decode($playlist->get_byid("0")["songs"]);//pega a playlist
  $current_song = $status->get("pls_0");//pega a música atual
  array_splice($pls, $current_song+1, 0, $music_id);//insere a música após a atual
  $pls = json_encode($pls);
  $playlist->update(0,$pls);//salva a pls na DB
  return 1;
}

function removefrompls($in_pls){
  global $playlist;
  global $status;
  $current_song = $status->get("pls_0");//pega a música atual
  if($in_pls<=$current_song){//Não devem ser removidas as músicas anteriores a que está tocando, nem a mesma
    return 0;//pois isto poderia causar vários bugs
  }
  $pls = json_decode($playlist->get_byid("0")["songs"]);//pega a playlist
  array_splice($pls, $in_pls, 1);//remove a música na posição escolhida
  $pls = json_encode($pls);
  $playlist->update(0,$pls);//salva a pls na DB
  return 1;
}

function removemusic($music_id){
  global $musics;
  global $playlist;
  global $status;
  $check = [];
  $check[] = $musics->remove($music_id);
  $current_song = $status->get("pls_0");//pega a música atual
  $pls = json_decode($playlist->get_byid("0")["songs"]);//pega a playlist

  for($i=0;$i<sizeof($pls);$i++){//verifica a playlist inteira em busca da música removida
    if($i>$current_song&&$pls[$i]==$music_id){//se ela ainda não foi tocada, remove da playlist
      array_splice($pls, $i, 1);
      $i--;
    }else if($i<=$current_song&&$pls[$i]==$music_id){//se ela já foi tocada, substitui por "deleted";
      array_splice($pls, $i, 1, "deleted");
    }
  }
  $pls = json_encode($pls);
  $check[] = $playlist->update(0,$pls);//salva na DB
  foreach($check as $item){
    if($item!=1){
      return 0;
    }
  }
  return 1;
}
?>