<?php
if (!isset($_REQUEST['action']))
	$action = "SaisieNote" ;
else
	$action = $_REQUEST['action'] ;
	
switch ($action)
	{
	case "SaisieNote" : {
        echo "veuillez saisir une note";
            break ;}  
    case "ValidationNote" : {
        //$noute = $_REQUEST['note'];
        //$coefficient = $_REQUEST['coefficient'];
        //$matiere = $_REQUEST['coefficient'];
        //$trimestre = $_REQUEST['trimestre'];
        //$année = $_REQUEST['année'];

        echo "Bravo vous avez saisie une note";
            break ;}  
 
	}
	
?>