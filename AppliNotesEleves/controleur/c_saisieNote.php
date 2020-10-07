<?php
if (!isset($_REQUEST['action']))
	$action = "consultLotMedicament" ;
else
	$action = $_REQUEST['action'] ;
	
switch ($action)
	{
	case "SaisieNote" : {
        echo "veuillez saisir une note";
            break ;}  
    case "ValidationNote" : {
        echo "Bravo vous avez saisie une note";
            break ;}  
 
	}
	
?>