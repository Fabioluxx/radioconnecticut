<?php
require_once "ssh.php";
require_once "database.php";
$user = new user;
$tokens = new tokens;
$token = $_SESSION["token"];
$userid = $tokens->get($token)["user_id"];
$userinfo = $user->get_byid($userid);

if($userinfo["adm"]!=1){
	header("location: /");
	die;
}
$cpuinfo = cpuinfo();
$page = '
<!DOCTYPE HTML>
<html>
	<head>
		<title>RadioConnecticut</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<link rel="stylesheet" href="assets/css/custom.css" />
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
	</head>
	<body>

		<!-- Header -->
			<div id="header">

				<div class="top">

					<!-- Logo -->
						<div id="logo">
							<span class="image avatar48"><img src="https://graph.facebook.com/'.$userinfo["fb_id"].'/picture" alt="" /></span>
							<h1 id="title">'.$userinfo["name"].'</h1>
							<p><a class="icon fa-plus-square-o" href="/"> Usuário</a></p>
							<p><a class="icon fa-sign-out" href="/login?logout"> Sair</a></p>
						</div>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="#inicio" id="inicio-link" class="skel-layers-ignoreHref"><span class="icon fa-home">Início</span></a></li>
								<li><a href="#radio" id="radio-link" class="skel-layers-ignoreHref"><span class="icon fa-music">Tocar</span></a></li>
								<li><a href="#votar" id="votar-link" class="skel-layers-ignoreHref"><span class="icon fa-thumbs-o-up">Playlist</span></a></li>
								<li><a href="#sugestoes" id="sugestoes-link" class="skel-layers-ignoreHref"><span class="icon fa-pencil">Sugestões</span></a></li>
								<li><a href="#publicidade" id="publicidade-link" class="skel-layers-ignoreHref"><span class="icon fa-users">Publicidade</span></a></li>

								<li><a href="#publicidade" id="publicidade-link" class="skel-layers-ignoreHref"><span class="icon fa-wrench">Configurações</span></a></li>
							</ul>
						</nav>
				</div>

				<div class="bottom">

					<!-- Social Icons -->
						<ul class="icons">
							<li><a href="https://www.youtube.com/channel/UCoeNhKnrwIrsN0aeGKXTCDA" target="_blank" class="icon fa-youtube"><span class="label">Youtube</span></a></li>
							<li><a href="https://www.facebook.com/radioconnecticut" target="_blank" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
						</ul>

				</div>

			</div>

		<!-- Main -->
			<div id="main">

				<!-- Intro -->
					<section id="inicio" class="one dark cover">
						<div class="container">

							<header>
								<h2 class="alt">Olá <strong>Fabio</strong>, Bem vindo(a) ao painel de administração</h2>
								<p>Status do servidor:</p>
							</header>
							<div class="status">
								<span class="icon fa-dashboard"></span>
								<span>CPU:'.$cpuinfo[1].'%</span>
								<span class="icon fa-tasks"></span>
								<span>RAM: '.$cpuinfo[0].'%</span>
								<span class="icon fa-hdd-o"></span>
								<span>HD:'.$cpuinfo[2].'%</span>
							</div>
						</div>
					</section>

				<!-- Tocar -->
				<section class="two">
					<div id="radio" class="container">
						<header>
							<h2>Tocar</h2>
						</header>
						<p>Procure uma música para tocar ou adicione uma:</p>
						<input id="search" type="text" onkeyup="searchsong(this.value)" placeholder="Nome da música">
						<span id="clvote" hidden="true" onclick="clvote()" class="icon fa-remove"></span>
						<br>
						<audio id="player" src="" controls="true"></audio>
						<ul id="songlist" class="vl rowa">
						</ul>
						<br>
						<input id="url" hidden="true" size="48" type="text" placeholder="https://www.youtube.com/watch?v=7dJ3CJjKcqc">
						<br>
						<div id="tocar_loading" hidden="true" class="spinner">
  <div class="rect1"></div>
  <div class="rect2"></div>
  <div class="rect3"></div>
  <div class="rect4"></div>
  <div class="rect5"></div>
</div>
						<span id="tocar_msg" hidden="true"></span>
						<span id="clplay" hidden="true" class="cladd icon fa-play-circle-o"></span>
						<span id="cladd" onclick="claction(2)" hidden="true" class="cladd icon fa-plus-circle"></span>
						<span id="clremove" hidden="true" class="cladd icon fa-remove"></span>
						<ul>
					</div>
				</section>
				<!-- Playlist -->
					<section id="votar" class="three">
						<div class="container">

							<header>
								<h2>Playlist</h2>
							</header>
							<p>Gerencie as playlists da rádio:</p>
							<br>
							<h3>Selecione uma playlist:</h3>
							<select onchange="getpls(this.value)" id="selectpls">
								<option>Selecione:</option>
								<option>Automática</option>
							</select>
							<div id="playlist_loading" hidden="true" class="spinner">
	  <div class="rect1"></div>
	  <div class="rect2"></div>
	  <div class="rect3"></div>
	  <div class="rect4"></div>
	  <div class="rect5"></div>
	</div>
							<br>
							<span id="playlist_msg"></span>
							<ul id="pls" class="vl rowa">
							</ul>


						</div>
					</section>

				<!-- Sugestoes -->
					<section id="sugestoes" class="four">
						<div class="container">

							<header>
								<h2>Sugestões</h2>
							</header>

							<p>Lista de pedidos dos usuários:</p>
							<span onclick="getsugestions()" class="icon fa-spinner link">(re)carregar</span>
							<ul id="sugestions" class="vl rowa">
							</ul>

						</div>
					</section>

			</div>

		<!-- Footer -->
			<div id="footer">

				<!-- Copyright -->
					<ul class="copyright">
						<li>&copy; RadioConnecticut</li>
					</ul>

			</div>


      <script>
        (function(i,s,o,g,r,a,m){i[\'GoogleAnalyticsObject\']=r;i[r]=i[r]||function(){
        (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
        m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
      })(window,document,\'script\',\'https://www.google-analytics.com/analytics.js\',\'ga\');

        ga(\'create\', \'UA-61068239-1\', \'auto\');
        ga(\'send\', \'pageview\');

      </script>



		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollzer.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>

			<script src="//code.jquery.com/ui/1.11.4/jquery-ui.js"></script>
			<script src="assets/js/admin.js"></script>

	</body>
</html>
';
echo $page;