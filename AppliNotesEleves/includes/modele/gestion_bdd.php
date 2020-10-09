<?php
//connexion
function connect($id, $mdp){
	require "connexion.php";
	$sql = "SELECT idTypeUtilisateur, idUtilisateur
	from GSBLOT_Utilisateur
	where login = '$id'and mdp = '$mdp'";
	$exec=$bdd->prepare($sql);
    $exec->execute();
	$curseur=$exec->fetch();
	$_SESSION['idTypeUtilisateur']=$curseur['idTypeUtilisateur'] ;
	$_SESSION['idUtilisateur'] = $curseur['idUtilisateur'];
	return $curseur;
}

function getMoyenneMatiere($matiere){
	require "connexion.php";
	$sql = " ";
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
	$sql = "select * from EcoolDirecte_Trimestre ";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}

function getLesMatieres(){
	require "connexion.php";
	$sql = " select * from EcoolDirecte_Matiere";
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
?>



