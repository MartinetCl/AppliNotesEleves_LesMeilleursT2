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


?>



