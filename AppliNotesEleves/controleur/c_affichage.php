<?php
if (!isset($_REQUEST['action']))
	$action = "consultLotMedicament" ;
else
	$action = $_REQUEST['action'] ;
	
switch ($action)
	{
		case "détail" : {
			$notes = getLesNotes();
			$trimestre = getTrimestre();
			$matière = getLesMatieres();
		}
		case "moyenne" : {
			$notes = getLesNotes();
			$matière = getLesMatieres();
		}
	}
	
?>