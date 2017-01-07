<?php
/*§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§
função(parâmetros)|Retorno //descrição{
  class user->
    add($name,$email,$fb_id) bool //adicionar um usuário
    get_lastid()
    get_byid($id)
    get_byfbid($fb_id)
    remove($id)
    ban($id,$ban) // $ban = bool
    points($id,$points) //muda quantia de pontos
    adm($id,$adm) //$adm = bool
    msg($id,$msg)
    msg_new($id,$new) //$new = bool

    class musics->
      add($id,$title,$temp,$channel) //id = varchar20
      remove($id)
      get_byid($id)
      get_all()

    class playlist->
      add($name,$type) //$type 0 = system protected
      get_lastid()
      remove($id)
      get_byid($id)
      get_currsong($plname)
      get_byname($name)
      update($id,$songs) $songs = json

    class sugestions->
      add($user_id,$existent,$url)
      get_lastid()
      remove($id)
      status($id,$status)

    class ads->
      add($name,$user_id,$value,$type,$frequency,$times)
      get_lastid()
      remove($id)
      status($id,$status)

    class votes->
      add($song_id,$user_id)
      get_lastid()
      get_bysong_id($song_id)
§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§§*/
require_once "config.php";

class user{
  public function add($name,$email,$fb_id){
    global $conn;
    $id = $this->get_lastid()+1;
    $sql = $conn->prepare("INSERT INTO users (id, name, email, points, fb_id, adm, msg_new, msg, ban)
    VALUES ('$id', '$name', '$email', '0', '$fb_id', '0', '1', 'Bem vindo à RadioConnecticut!', '0')");
    if ($sql->execute() === TRUE) {
      return 1;
    } else {
      return 0;
    }
  }
  public function get_lastid(){
    global $conn;
    $sql = "SELECT id FROM users ORDER BY id DESC LIMIT 1";
    $result = $conn->query($sql);
    if ($result && $result->num_rows > 0) {
        return $result->fetch_assoc()["id"];
    } else {
        return 0;
    }
  }
  public function get_byid($id){
    global $conn;
    $sql = "SELECT * FROM users WHERE id='$id'";
    $result = $conn->query($sql);
    if ($result && $result->num_rows > 0) {
        return $result->fetch_assoc();
    } else {
        return 0;
    }
  }
  public function get_byfbid($fb_id){
    global $conn;
    $sql = "SELECT * FROM users WHERE fb_id='$fb_id'";
    $result = $conn->query($sql);
    if ($result && $result->num_rows > 0) {
        return $result->fetch_assoc();
    } else {
        return 0;
    }
  }
  public function remove($id){
    global $conn;
    $sql = $conn->prepare("DELETE FROM users WHERE id='$id'");
    if ($sql->execute() === TRUE && $sql->affected_rows > 0) {
      return 1;
    } else {
      return 0;
    }
  }
  public function ban($id,$ban){
    global $conn;
    $sql = $conn->prepare("UPDATE users SET ban='$ban' WHERE id='$id'");
    if ($sql->execute() === TRUE && $sql->affected_rows > 0) {
      return 1;
    } else {
      return 0;
    }
  }
  public function points($id,$points){
    global $conn;
    $sql = $conn->prepare("UPDATE users SET points='$points' WHERE id='$id'");
    if ($sql->execute() === TRUE && $sql->affected_rows > 0) {
      return 1;
    } else {
      return 0;
    }
  }
  public function adm($id,$adm){
    global $conn;
    $sql = $conn->prepare("UPDATE users SET adm='$adm' WHERE id='$id'");
    if ($sql->execute() === TRUE && $sql->affected_rows > 0) {
      return 1;
    } else {
      return 0;
    }
  }
  public function msg($id,$msg){
    global $conn;
    $sql = $conn->prepare("UPDATE users SET msg='$msg' WHERE id='$id'");
    if ($sql->execute() === TRUE && $sql->affected_rows > 0) {
      return 1;
    } else {
      return 0;
    }
  }
  public function msg_new($id,$new){
    global $conn;
    $sql = $conn->prepare("UPDATE users SET msg_new='$new' WHERE id='$id'");
    if ($sql->execute() === TRUE && $sql->affected_rows > 0) {
      return 1;
    } else {
      return 0;
    }
  }
}

class musics{
  public function add($id,$title){
    global $conn;
    $sql = $conn->prepare("INSERT INTO musics (id, title)
    VALUES ('$id', '$title')");
    if ($sql->execute() === TRUE) {
      return 1;
    } else {
      return 0;
    }
  }
  public function remove($id){
    global $conn;
    $sql = $conn->prepare("DELETE FROM musics WHERE id='$id'");
    if ($sql->execute() === TRUE && $sql->affected_rows > 0) {
      return 1;
    } else {
      return 0;
    }
  }
  public function get_byid($id){
    if($id=="deleted"){
      $ret["id"] = "deleted";
      $ret["title"] = "(Música apagada)";
      return $ret;
    }
    global $conn;
    $sql = "SELECT * FROM musics WHERE id='$id'";
    $result = $conn->query($sql);
    if ($result && $result->num_rows > 0) {
        return $result->fetch_assoc();
    } else {
        return 0;
    }
  }
  public function get_all(){
    global $conn;
    $sql = "SELECT * FROM musics";
    $result = $conn->query($sql);
    $musics = [];
    if ($result && $result->num_rows > 0) {
        while($row = $result->fetch_assoc()){
          $musics[] = $row;
        }
        return $musics;
    } else {
        return 0;
    }
  }
  public function ammount(){
    global $conn;
    $sql = "SELECT COUNT(*) FROM musics;";
    $result = $conn->query($sql);
    $musics = [];
    if ($result && $result->num_rows > 0) {
        while($row = $result->fetch_assoc()){
          $musics[] = $row;
        }
        return $musics[0]["COUNT(*)"];
    } else {
        return 0;
    }
  }
}

class playlist{
  public function add($name,$type){
    global $conn;
    $id = $this->get_lastid()+1;
    $sql = $conn->prepare("INSERT INTO playlist (id, name, songs, type)
    VALUES ('$id', '$name', '[]', '$type')");
    if ($sql->execute() === TRUE) {
      return 1;
    } else {
      return 0;
    }
  }
  public function get_lastid(){
    global $conn;
    $sql = "SELECT id FROM playlist ORDER BY id DESC LIMIT 1";
    $result = $conn->query($sql);
    if ($result && $result->num_rows > 0) {
        return $result->fetch_assoc()["id"];
    } else {
        return 0;
    }
  }
  public function remove($id){
    global $conn;
    $sql = $conn->prepare("DELETE FROM playlist WHERE id='$id'");
    if ($sql->execute() === TRUE && $sql->affected_rows > 0) {
      return 1;
    } else {
      return 0;
    }
  }
  public function get_byid($id){
    global $conn;
    $sql = "SELECT * FROM playlist WHERE id='$id'";
    $result = $conn->query($sql);
    if ($result && $result->num_rows > 0) {
        return $result->fetch_assoc();
    } else {
        return 0;
    }
  }
  public function get_byname($name){
    global $conn;
    $sql = "SELECT * FROM playlist WHERE name='$name'";
    $result = $conn->query($sql);
    if ($result && $result->num_rows > 0) {
        return $result->fetch_assoc();
    } else {
        return 0;
    }
  }
  public function update($id,$songs){
    global $conn;
    $sql = $conn->prepare("UPDATE playlist SET songs='$songs' WHERE id='$id'");
    if ($sql->execute() === TRUE && $sql->affected_rows > 0) {
      return 1;
    } else {
      return 0;
    }
  }
}

class suggestions{
  public function add($user_id,$value,$type){
    global $conn;
    $id = $this->get_lastid()+1;
    $data = time();
    $sql = $conn->prepare("INSERT INTO suggestions (id, user_id, value, type, data, status)
    VALUES ('$id', '$user_id', '$value', '$type', '$data' , '0')");
    if ($sql->execute() === TRUE) {
      return 1;
    } else {
      return 0;
    }
  }
  public function get_lastid(){
    global $conn;
    $sql = "SELECT id FROM suggestions ORDER BY id DESC LIMIT 1";
    $result = $conn->query($sql);
    if ($result && $result->num_rows > 0) {
        return $result->fetch_assoc()["id"];
    } else {
        return 0;
    }
  }
  public function remove($id){
    global $conn;
    $sql = $conn->prepare("DELETE FROM suggestions WHERE id='$id'");
    if ($sql->execute() === TRUE && $sql->affected_rows > 0) {
      return 1;
    } else {
      return 0;
    }
  }
  public function status($id,$status){
    global $conn;
    $sql = $conn->prepare("UPDATE suggestions SET status='$status' WHERE id='$id'");
    if ($sql->execute() === TRUE && $sql->affected_rows > 0) {
      return 1;
    } else {
      return 0;
    }
  }
  public function me($user_id){
    global $conn;
    $sql = "SELECT * FROM suggestions WHERE user_id = '$user_id' ORDER BY data DESC LIMIT 1";
    $result = $conn->query($sql);
    if ($result && $result->num_rows > 0) {
      $ret = [];
      while($row = $result->fetch_assoc()){
        $ret[] = $row;
      }
        return $ret[0];
    } else {
        return 0;
    }
  }
  public function getall(){
    global $conn;
    $sql = "SELECT * FROM suggestions WHERE status = '0' ORDER BY data DESC LIMIT 5";
    $result = $conn->query($sql);
    if ($result && $result->num_rows > 0) {
      $ret = [];
      while($row = $result->fetch_assoc()){
        $ret[] = $row;
      }
        return $ret;
    } else {
        return 0;
    }
  }
}

class ads{
  public function add($name,$user_id,$value,$type,$frequency,$times){
    global $conn;
    $id = $this->get_lastid()+1;
    $sql = $conn->prepare("INSERT INTO ads (id, name, user_id, value, type, frequency, times, status)
    VALUES ('$id', '$name', '$user_id', '$value', '$type', '$frequency', '$times', '0')");
    if ($sql->execute() === TRUE) {
      return 1;
    } else {
      return 0;
    }
  }
  public function get_lastid(){
    global $conn;
    $sql = "SELECT id FROM ads ORDER BY id DESC LIMIT 1";
    $result = $conn->query($sql);
    if ($result && $result->num_rows > 0) {
        return $result->fetch_assoc()["id"];
    } else {
        return 0;
    }
  }
  public function get_byid($id){
    global $conn;
    $sql = "SELECT * FROM ads WHERE id='$id'";
    $result = $conn->query($sql);
    if ($result && $result->num_rows > 0) {
        return $result->fetch_assoc();
    } else {
        return 0;
    }
  }
  public function remove($id){
    global $conn;
    $sql = $conn->prepare("DELETE FROM ads WHERE id='$id'");
    if ($sql->execute() === TRUE && $sql->affected_rows > 0) {
      return 1;
    } else {
      return 0;
    }
  }
  public function update($id,$field,$value){
    global $conn;
    $sql = $conn->prepare("UPDATE ads SET $field='$value' WHERE id='$id'");
    if ($sql->execute() === TRUE && $sql->affected_rows > 0) {
      return 1;
    } else {
      return 0;
    }
  }
  public function get_actives(){
    global $conn;
    $sql = "SELECT * FROM ads WHERE times > 0 AND status = '1' LIMIT 10";
    $result = $conn->query($sql);
    if ($result && $result->num_rows > 0) {
        $return = [];
        while($row = $result->fetch_assoc()){
          $return[] = $row;
        }
        return $return;
    } else {
        return 0;
    }
  }
}

class tokens{
  public function activate($user_id){
    global $conn;
    $token = md5(uniqid());
    $data = time();

    $sql = "SELECT * FROM tokens WHERE user_id='$user_id'";
    $result = $conn->query($sql);
    if ($result && $result->num_rows > 0) {//se encontrou, faz update
      $sql = $conn->prepare("UPDATE tokens SET token='$token',data='$data' WHERE user_id='$user_id'");
      if ($sql->execute() === TRUE && $sql->affected_rows > 0) {
        return $token;
      } else {
        return 0;
      }
    } else {//se não, cria
      $sql = $conn->prepare("INSERT INTO tokens (user_id, token, data, active)
      VALUES ('$user_id', '$token', '$data', '1')");
      if ($sql->execute() === TRUE) {
        return $token;
      } else {
        return 0;
      }
    }
  }
  public function get($token){
    global $conn;
    $sql = "SELECT * FROM tokens WHERE token='$token'";
    $result = $conn->query($sql);
    if ($result && $result->num_rows > 0) {
        return $result->fetch_assoc();
    } else {
        return 0;
    }
  }
  public function remove($user_id){
    global $conn;
    $sql = $conn->prepare("DELETE FROM tokens WHERE user_id='$user_id'");
    if ($sql->execute() === TRUE && $sql->affected_rows > 0) {
      return 1;
    } else {
      return 0;
    }
  }
}

class status{
  public function get($name,$val=""){
    global $conn;
    if($val==""){
      $sql = "SELECT value FROM status WHERE name='$name'";
      $result = $conn->query($sql);
      if ($result && $result->num_rows > 0) {
          return $result->fetch_assoc()["value"];
      } else {
          return 0;
      }
    }else{
      $sql = $conn->prepare("UPDATE status SET value='$val' WHERE name='$name'");
      if ($sql->execute() === TRUE && $sql->affected_rows > 0) {
        return 1;
      } else {
        return 0;
      }
    }
  }
}

class config{
  public function get($name,$val=""){
    global $conn;
    if($val==""){
      $sql = "SELECT value FROM config WHERE name='$name'";
      $result = $conn->query($sql);
      if ($result && $result->num_rows > 0) {
          return $result->fetch_assoc()["value"];
      } else {
          return 0;
      }
    }else{
      $sql = $conn->prepare("UPDATE config SET value='$val' WHERE name='$name'");
      if ($sql->execute() === TRUE && $sql->affected_rows > 0) {
        return 1;
      } else {
        return 0;
      }
    }
  }
}

?>
