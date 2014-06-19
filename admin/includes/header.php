<!DOCTYPE html>

<html>

	<head>
		<meta charset="UTF-8"/>
		<title><?php echo $title; ?></title>
		<link type="text/css" href="style.css" media="screen" rel="stylesheet" />


<meta name="description" content="Ceci est l'espace Administration de mon blog" />
</head>

<body>
	<header style="border: solid 1px red;">
		<h1>
			Administration de mon blog
		</h1>
		<nav>
			<ul>
				<?php if (isset($_SESSION) && isset($_SESSION['user'])) { ?>
				<li><a href="index.php">Accueil</a></li>
				<li><a href="../cv.htm">CV</a></li>
				<li><a href="gestion_articles.php">Gestion des articles</a></li>
				<li><a href="#">Choix de menu 3</a></li>
				<li><a href="#">Choix de menu 4</a></li>
				<li class="deconnexion"><a href="?action=deconnexion">Déconnexion</a></li>
				<?php } ?>
			</ul>
			<!-- Pour provoquer l'élargissement du nav -->
			<div style="clear: both;"></div>
		</nav>
	</header>