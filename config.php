<?php
//DB Info
$servername = "localhost";
$username = "root";
$password = "SENHA";
$dbname = "radio";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
$conn->set_charset("utf8");
// Check connection
if ($conn->connect_error) {
    die("Erro na conexão com o Banco de Dados!");
}

define("server_url","http://localhost/");

define("musics_location","http://localhost/musics/");
define("ads_location","http://localhost/ads/");

define("SSH_HOST","localhost");
define("SSH_USER","root");
define("SSH_PASS","SENHA");

define("SERVER_MUSICS_DIR","/opt/lampp/htdocs/musics/");
define("SERVER_HDD_PARTITION","simfs");//ex: sda1,sda2,simfs

define("sugestions_time","82800");//a cada 23 horas
define("token_expires","86400");//expira em 24 horas

require_once "session.php";
?>
