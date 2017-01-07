<?php
session_start();
if(isset($_GET["logout"])){
  session_destroy();
  session_start();
}
require_once "Facebook/autoload.php";
$fb = new Facebook\Facebook([
  'app_id' => 'XXXXXXXXXXXXXXXX', // Replace {app-id} with your app id
  'app_secret' => 'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX',
  'default_graph_version' => 'v2.2',
  ]);

$helper = $fb->getRedirectLoginHelper();

$permissions = ['email']; // Optional permissions
$loginUrl = $helper->getLoginUrl('http://104.255.97.173/login/callback.php', $permissions);

echo '
<html>
	<head>
		<title>RadioConnecticut</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1" />
		<!--[if lte IE 8]><script src="assets/js/html5shiv.js"></script><![endif]-->
		<link rel="stylesheet" href="assets/css/main.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<noscript><link rel="stylesheet" href="assets/css/noscript.css" /></noscript>
	</head>
	<body class="is-loading">

		<!-- Wrapper -->
			<div id="wrapper">

				<!-- Main -->
					<section id="main">
						<header>
							<span class="avatar"><img src="images/logo.png" width="128" alt="" /></span>
							<h1>Radio Connecticut</h1>
							<p>Entre para ter acesso total ao site</p>
						</header>
						<a class="button" href="'.htmlspecialchars($loginUrl).'">Entrar com Facebook</a>
						<hr />
						<footer>
							<ul class="icons">
								<li><a href="https://www.youtube.com/channel/UCoeNhKnrwIrsN0aeGKXTCDA" class="fa-youtube">Youtube</a></li>
								<li><a href="https://www.facebook.com/radioconnecticut" class="fa-facebook">Facebook</a></li>
                <li><a href="https://www.twitter.com/rdconnecticut" class="fa-twitter">Twitter</a></li>
							</ul>
						</footer>
					</section>

				<!-- Footer -->
					<footer id="footer">
						<ul class="copyright">
							<li>&copy; RadioConnecticut</li>
						</ul>
					</footer>

			</div>

		<!-- Scripts -->
			<!--[if lte IE 8]><script src="assets/js/respond.min.js"></script><![endif]-->
			<script>
				if ("addEventListener" in window) {
					window.addEventListener("load", function() { document.body.className = document.body.className.replace(/\bis-loading\b/, ""); });
					document.body.className += (navigator.userAgent.match(/(MSIE|rv:11\.0)/) ? " is-ie" : "");
				}
			</script>

	</body>
</html>
';
?>
