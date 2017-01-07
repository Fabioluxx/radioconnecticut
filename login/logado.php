<?php
session_start();
$_SESSION["logging"]=true;//desativar login-check
require_once "Facebook/autoload.php";
require_once "../database.php";

$fb = new Facebook\Facebook([
  'app_id' => '1573420426286706', // Replace {app-id} with your app id
  'app_secret' => 'ab18de8533840ea5c0748ee9020d4d3c',
  'default_graph_version' => 'v2.2',
  ]);
$token = $_SESSION['fb_access_token'];


try {
  // Returns a `Facebook\FacebookResponse` object
  $response = $fb->get('/me?fields=id,first_name,email', "$token");
} catch(Facebook\Exceptions\FacebookResponseException $e) {
  echo 'Graph returned an error: ' . $e->getMessage();
  exit;
} catch(Facebook\Exceptions\FacebookSDKException $e) {
  echo 'Facebook SDK returned an error: ' . $e->getMessage();
  exit;
}
$user = $response->getGraphUser();
$fb_id = $user["id"];
$name = $user["first_name"];
$email = $user["email"];
$user = new user;
$userinfo = $user->get_byfbid($fb_id);
if($userinfo==0){//se for novo usuário
  $user->add($name,$email,$fb_id);//cria uma conta
  $userinfo = $user->get_byfbid($fb_id);
}
if($userinfo["ban"]==1){//se o usuário estiver banido
  die;
}
$tokens = new tokens;
$token = $tokens->activate($userinfo["id"]);
$_SESSION["token"] = $token;
header("location: /");
?>
