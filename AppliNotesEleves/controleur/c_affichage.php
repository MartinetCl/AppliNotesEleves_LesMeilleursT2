<?php
if (!isset($_REQUEST['action']))
	$action = "détail";
else
	$action = $_REQUEST['action'] ;
	
switch ($action)
	{
		case "détail" : {
			$leTrimestre = getTrimestre();
			$lesMatières = getLesMatieres();
			$moyenneGlo = getMoyenneGlobale($_SESSION['idConnexion']);
			include "vues/v_détail.php";
			break;
		}
	}
	
?>