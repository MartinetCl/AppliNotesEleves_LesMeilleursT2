<?php
if (!isset($_REQUEST['action']))
	$action = "SaisieNote" ;
else
	$action = $_REQUEST['action'] ;
	
switch ($action)
	{
	case "SaisieNote" : {
        $lesMatiere = getLesMatieres();
        $lestrimestre = getTrimestre();

        require "vues/v_SaisieNote.php";
            break ;}  
    case "ValidationNote" : {
        $nouteNumera = $_REQUEST['noteNumera'];
        echo $nouteNumera;
        $nouteDenomi = $_REQUEST['noteDenomi'];
        echo $nouteDenomi;
        $coefficient = $_REQUEST['coefficient'];
        echo $coefficient;
        $matiere = $_REQUEST['matiere'];
        echo $matiere;
        $trimestre = $_REQUEST['trimestre'];
        echo $trimestre;
        $année = $_REQUEST['annee'];
        echo $année;
        echo "Bravo vous avez saisie une note";

            break ;}  
 
	}
	
?>