<!DOCTYPE html>
<html lang="fr">
<head>
<meta charset= "UTF-8"/>
<title>GSB Lot</title>
<link href="includes\css\style.css" rel="stylesheet" type="text/css" />
</head>
<nav>
<img src="includes\images\logoGSB.png" width="150" height="auto">
<?php 
if(isset($_SESSION['idTypeUtilisateur'])){
echo '<a href = "index.php?uc=decnx"><input id = "bt_deco" type = "button" value = "Deconnexion" ></a>';
}
?>
<ul id= "menu">
<?php 
if (isset($_REQUEST['uc']))
{	
	if ($_REQUEST['uc'] == 'magasin')
	{
		echo '    
		<li><a href = "index.php?uc=magasin&action=renseignement">Renseignement</a></li>
		<li><a>Consulter</a>
			<ul>
				<li><a href = "index.php?uc=magasin&action=stock">En stock</a></li>
				<li><a href = "index.php?uc=magasin&action=sortis">Sortis</a></li>
			</ul>
		</li>
		';
	}
	else if ($_REQUEST['uc'] == 'production')
	{
		echo '
		<li><a href = "index.php?uc=production&action=enregistrer">Enregistrement</a></li>
		<li><a href = "index.php?uc=production&action=consulter">Consultation</a></li>
		';
	}
	else if ($_REQUEST['uc'] == 'visite')
	{
		echo '
		<li><a href = "index.php?uc=visite&action=depot">Depot echantillon</a></li>
		<li><a href = "index.php?uc=visite&action=consultation">Consultation</a></li>
		';
	}
}
?>
</ul>
</nav>
<body>