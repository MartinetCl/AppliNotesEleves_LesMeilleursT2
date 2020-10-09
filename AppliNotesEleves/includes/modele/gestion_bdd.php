<?php
//connexion
function connect($id, $mdp){
	require "connexion.php";
	$sql = "SELECT  idUt
	from EcoolDirect_Utilisateur
	where login = '$id'and mdp = '$mdp'";
	$exec=$bdd->prepare($sql);
    $exec->execute();
	$curseur=$exec->fetch();
	$_SESSION['idConnexion'] = $curseur['idUt'];
	return $curseur;
}

function getMoyenneMatiere($matiere){
	require "connexion.php";
	$sql = "";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}

function getLesNotes($matiere){
	require "connexion.php";
	$sql = " ";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}

function getTrimestre(){
	require "connexion.php";
	$sql = "SELECT * FROM ecooldirect_trimestre ";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}

function getLesMatieres(){
	require "connexion.php";
	$sql = " SELECT * FROM ecooldirect_matiere";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}
function getMoyenneGlobale($idUtilisateur){
	require "connexion.php";
	$sql = " ";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}

function rajouterNote($codeMat,$noteNumerateur,$noteDenominateur,$coeffNote,$trimestre,$annee,$idUtilisateur){
	require "connexion.php";
	$sql = 'select max(idNote)+1 FROM ecooldirect_note where ecooldirect_note.codeMatNote ="'.$codeMat.'"';
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    echo $curseur;
    //return $curseur;
    }


?>



