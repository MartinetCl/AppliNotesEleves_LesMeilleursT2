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
			include  "vues/v_selection_note.php";
			$leTrimestre = $_REQUEST['trimestre'];
			$lAnnee = $_REQUEST['annee'];
			$lesMatières = getLesMatieres();
			$moyenneGlo = getMoyenneGlobale($_SESSION['idConnexion'], $leTrimestre, $lAnnee);
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