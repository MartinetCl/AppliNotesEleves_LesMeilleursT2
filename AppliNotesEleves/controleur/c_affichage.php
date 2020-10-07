<?php
if (!isset($_REQUEST['action']))
	$action = "consultLotMedicament" ;
else
	$action = $_REQUEST['action'] ;
	
switch ($action)
	{
	case "SelectionTrimestre" : {
        echo "veuillez saisir un trimestre";
            break ;}  
    case "AffichageBulletin" : {
        echo "Bravo voiçi vos notes";
            break ;}  
 
	}
	
?>