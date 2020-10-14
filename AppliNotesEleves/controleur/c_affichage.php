<?php
if (!isset($_REQUEST['action']))
	$action = "selection";
else
	$action = $_REQUEST['action'] ;
	
switch ($action)
	{
		case "détail" : {
			$leTrimestre = getTrimestre();
			$lAnnee = getAnnee();
			$lesMatières = getLesMatieres();
			$moyenneGlo = getMoyenneGlobale($_SESSION['idConnexion']);
			include  "vues/v_selection_note.php";
			include "vues/v_détail.php";
			break;
		}
		case "selection" : {
			$leTrimestre = getTrimestre();
			$lAnnee = getAnnee();
			include "vues/v_selection_note.php";
			break;
		}
	}
	
?>