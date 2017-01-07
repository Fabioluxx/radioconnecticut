<?php
require_once "ssh.php";
require_once "database.php";
$user = new user;
$tokens = new tokens;
$token = $_SESSION["token"];
$userid = $tokens->get($token)["user_id"];
$userinfo = $user->get_byid($userid);

if($userinfo["adm"]==1){
	$admlink = '<p><a class="icon fa-plus-square-o" href="admin.php"> Administrador</a></p>';
}else{
	$admlink = '';
}

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
							'.$admlink.'
							<p><a class="icon fa-sign-out" href="/login?logout"> Sair</a></p>
						</div>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="#inicio" id="inicio-link" class="skel-layers-ignoreHref"><span class="icon fa-home">Início</span></a></li>
								<li><a href="#radio" id="radio-link" class="skel-layers-ignoreHref"><span class="icon fa-music">Rádio</span></a></li>
								<li><a href="#votar" id="votar-link" class="skel-layers-ignoreHref"><span class="icon fa-thumbs-o-up">Sugestões</span></a></li>
								<li><a href="#publicidade" id="publicidade-link" class="skel-layers-ignoreHref"><span class="icon fa-users">Publicidade</span></a></li>
								<li><a href="https://www.youtube.com/embed/vfqDuDuEUq4" target="_blank" class="skel-layers-ignoreHref"><span class="icon fa-external-link">Somente rádio</span></a></li>
							</ul>
						</nav>

				</div>

				<div class="bottom">

					<!-- Social Icons -->
						<ul class="icons">
							<li><a href="https://www.youtube.com/channel/UCoeNhKnrwIrsN0aeGKXTCDA" target="_blank" class="icon fa-youtube"><span class="label">Youtube</span></a></li>
							<li><a href="https://www.facebook.com/radioconnecticut" target="_blank" class="icon fa-facebook"><span class="label">Facebook</span></a></li>
							<li><a href="https://www.twitter.com/rdconnecticut" target="_blank" class="icon fa-twitter"><span class="label">Twitter</span></a></li>
						</ul>

				</div>

			</div>

		<!-- Main -->
			<div id="main">

				<!-- Intro -->
					<section id="inicio" class="one dark cover">
						<div class="container">

							<header>
								<h2 class="alt">Olá <strong>Fabio</strong>, seja bem vindo(a) à RadioConnecticut</h2>
								<p>Diferente de que uma rádio qualquer, aqui você está no controle!<br />
								Peça sua música favorita.<br />
								Divulgue seu canal, facebook, twitter, o que quiser.</p>
							</header>

							<footer>
								<h2 class="alt">Obrigado por estar aqui :)</h2>
							</footer>

						</div>
					</section>

				<!-- Radio Player -->

					<div id="radio" class="yt_player">
						<iframe width="950" height="550" src="https://www.youtube.com/embed/7dJ3CJjKcqc" frameborder="0" allowfullscreen></iframe>
							<script async src="//pagead2.googlesyndication.com/pagead/js/adsbygoogle.js"></script>
<!-- RadioConnecticut -->
<ins class="adsbygoogle"
     style="display:block"
     data-ad-client="ca-pub-5194646680480115"
     data-ad-slot="2612837982"
     data-ad-format="auto"></ins>
<script>
(adsbygoogle = window.adsbygoogle || []).push({});
</script>
					</div>
				<!-- Votar -->
					<section id="votar" class="three">
						<div class="container">

							<header>
								<h2>Votar</h2>
							<p>Escolha a próxima música a ser tocada:</p>
							<br>
							<p>Atenção: Você pode usar o campo abaixo para procurar uma música, você pode escolher uma existente (recomendado) ou então pedir uma outra de sua preferência. Detalhes: Você só pode fazer 1 pedido a cada 23 horas, SE ESCOLHER UMA MÚSICA EXISTENTE, ELA SERÁ TOCADA AUTOMATICAMENTE, caso contrário, deverá informar o url da música no Youtube, após isto, será necessária a aprovação de um administrador (o que pode demorar) e então somente após isto ela será tocada (ou não :)</p>
							<br>
							<input id="search" type="text" onkeyup="searchsong(this.value)" placeholder="Nome da música">
							<span id="clvote" hidden="true" onclick="clvote()" class="icon fa-remove"></span>
							<ul class="vl rowa">
							</ul>
							<br>
							<button id="sugerir" onclick="sugerir()">Sugerir música</button>
						</div>
					</section>

				<!-- Contact -->
					<section id="publicidade" class="four">
						<div class="container">

							<header>
								<h2>Publicidade</h2>
							</header>

							<p>Para publicidade e/ou parceria com a rádio: em breve instruções.<br>Ou então entre em contato por email: fabiolux999@gmail.com</p>
							<div class="fb-like" data-href="https://facebook.com/radioconnecticut" data-layout="box_count" data-action="like" data-size="large" data-show-faces="false" data-share="true"></div>
<br><br>
<a href="https://twitter.com/RdConnecticut" class="twitter-follow-button" data-show-count="true">Follow @RdConnecticut</a><script async src="//platform.twitter.com/widgets.js" charset="utf-8"></script>

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


			<div id="fb-root"></div>
      <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = "//connect.facebook.net/pt_BR/sdk.js#xfbml=1&version=v2.6&appId=827186517363104";
      fjs.parentNode.insertBefore(js, fjs);
      }(document, \'script\', \'facebook-jssdk\'));</script>

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
			<script src="assets/js/custom.js"></script>
			<script>token="'.$_SESSION["token"].'";</script>
	</body>
</html>
';
echo $page;

?>