<?php
if (!isset($_REQUEST['action']))
	$action = "consultLotMedicament" ;
else
	$action = $_REQUEST['action'] ;
	
switch ($action)
	{
		case "détail" : {
			$leTrimestre = getTrimestre();
			$lesMatières = getLesMatieres();
			$nbNotes = getNbNotes();
			include "v_détail.php";
			break;
		}
	}
	
?>