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
        $lesAnnees = getAnnee();

        require "vues/v_SaisieNote.php";
            break ;}  
    case "ValidationNote" : {
        $nouteNumera = $_REQUEST['noteNumera'];
        $nouteDenomi = $_REQUEST['noteDenomi'];
        $coefficient = $_REQUEST['coefficient'];
        $matiere = $_REQUEST['matiere'];
        $trimestre = $_REQUEST['trimestre'];
        $annee = $_REQUEST['annee'];
        $user = $_SESSION['idConnexion'];

        rajouterNote($matiere,$nouteNumera,$nouteDenomi,$coefficient,$trimestre,$annee,$user);
        echo "Bravo vous avez saisie une note";

            break ;}  
 
	}
	
?>