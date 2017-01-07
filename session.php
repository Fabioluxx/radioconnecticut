<?php
session_start();
require_once "database.php";
if($_SESSION["logging"]!=true){
  if(!isset($_SESSION["token"])){//se não há um token
    session_destroy();
    header("location: /login");
    die;
  }else{
    $tokens = new tokens;
    $user = new user;
    $token = $_SESSION["token"];
    $btoken = $tokens->get($token);
    $time = time() - $btoken["data"];
    if($time>=token_expires){//se o token expirou
      header("location: /login");
      die;
    }
  }
}
?>
