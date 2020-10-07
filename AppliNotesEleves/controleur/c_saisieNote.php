<?php
if (!isset($_REQUEST['action']))
	$action = "SaisieNote" ;
else
	$action = $_REQUEST['action'] ;
	
switch ($action)
	{
	case "SaisieNote" : {
        require "vues/v_SaisieNote.php";
            break ;}  
    case "ValidationNote" : {
        //$nouteNumera = $_REQUEST['noteNumera'];
        //$nouteDenomi = $_REQUEST['noteDenomi'];
        //$coefficient = $_REQUEST['coefficient'];
        //$matiere = $_REQUEST['matiere'];
        //$trimestre = $_REQUEST['trimestre'];
        //$année = $_REQUEST['annee'];

        echo "Bravo vous avez saisie une note";
            break ;}  
 
	}
	
?>