<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset= "UTF-8"/>
<title>Notes Elèves</title>
<link href="includes\css\style.css" rel="stylesheet" type="text/css" />
</head>
<nav>
<?php 
if(isset($_SESSION)){
echo '<a href = "index.php?uc=decnx" id = "bt_deco"><input type = "button" value = "Deconnexion" ></a>';
echo '<div style = "clear : both"></div>';
}
?>
<ul id= "menu">
<?php 
if (isset($_REQUEST['uc']))
{	
	echo '
	<li><a href = "index.php?uc=saisie">Saisie des notes</a></li>
	<li><a href = "index.php?uc=consulter">Consulter les notes</a></li>
	';
}
?>
</ul>
</nav>
<body>