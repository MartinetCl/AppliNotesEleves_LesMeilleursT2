<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset= "UTF-8"/>
<title>Notes Elèves</title>
<link href="includes\css\style.css" rel="stylesheet" type="text/css" />
</head>
<nav>
<?php 
if(isset($_SESSION['idTypeUtilisateur'])){
echo '<a href = "index.php?uc=decnx" id = "bt_deco"><input type = "button" value = "Deconnexion" ></a>';
echo '<div style = "clear : both"></div>';
}
?>
<ul id= "menu">
<?php 
if (isset($_SESSION['idConnexion']))
{	
	
}
?>

<ul id="menu">
<li id="vide"></li>' 
<li id="menu_link_first"><a href="index.php?uc=saisieNote">Nouvelle Note</a></li>
<li id="menu_link_first"><a href="index.php?uc=AffichageBulletin">Afficher bulletin</a></li>
</ul>


</ul>
</nav>
<body>