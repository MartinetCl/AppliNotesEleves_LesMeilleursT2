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

//Visiteur médical
function getMedicamentEchantillon($idUtilisateur){
	require "connexion.php";
	$sql = "SELECT *
	from GSBLOT_Echantillon
	inner join GSBLOT_lot on numeroLot = numeroLotEcht
	inner join GSBLOT_Medicament on idMedicament = idMedicamentLot
	where idMedicament = '$idUtilisateur'";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}

function getDateVisiteEchantillon($dateVisite){
	require "connexion.php";
	$sql = "SELECT libelleMedicament 
	from GSBLOT_Echantillon
	where dateVisite = '$dateVisite'";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}

function getMedicament($idVisiteur){
	require "connexion.php";
	$sql = "SELECT * from GSBLOT_Echantillon
			inner join GSBLOT_Utilisateur on idUtilisateurEcht = idUtilisateur
			inner join GSBLOT_lot on numeroLotEcht = numeroLot
			inner join GSBLOT_Medicament on idMedicamentLot = idMedicament
			where idUtilisateurEcht = " . $idVisiteur . "
			order by nom";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}

function dateDepotEcht($idEchantillon){
	require "connexion.php";
	$sql = "SELECT libelleMedicament 
	from GSBLOT_Echantillon
	where dateVisite = '$dateVisite'";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}

//en plus !!!

function getMedecin(){
	require "connexion.php";
	$sql = "SELECT *
			from GSBLOT_Medecin
			order by nomMedecin";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}

function getLot($idUtilisateur, $idMedicament) {
	require "connexion.php";
	$sql = "SELECT *
			from GSBLOT_Echantillon
			inner join lot on numeroLot = numeroLotEcht
			where idUtilisateurEcht = " . $idUtilisateur . "
			and idMedicamentLot = " . $idMedicament . "
			order by numeroLotEcht";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}

function getEchantillon($utilisateur, $medicament){
	require "connexion.php";
	$sql = "SELECT *
			from GSBLOT_Echantillon
			inner join lot on numeroLot = numeroLotEcht
			where idUtilisateurEcht = " . $idUtilisateur . "
			and idMedicamentLot = " . $idMedicament . "
			order by numeroEchantillon";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}

/////Ajouter par Lorenzo/recupérer l'idmedicament et le libelle//V///
function Trouvemedicament(){
	require "connexion.php";
	$sql =" SELECT idMedicament , libelleMedicament 
	from gsblot_medicament ";
$exec=$bdd->prepare($sql) ;
$exec->execute() ;
$curseur=$exec->fetchAll();
return $curseur;
}
/////Ajouter par Lorenzo/enregistement d'un Lot/////////
function enregistrerLot($lot,$NbEchantillon,$idMedicament,$dateFabri){
require "connexion.php";
$sql="INSERT into gsblot_lot(gsblot_lot.numeroLot,gsblot_lot.dateFabrication,gsblot_lot.nbEchantillon,gsblot_lot.idMedicamentLot)
values($lot,'$dateFabri',$NbEchantillon,$idMedicament)";
$exec=$bdd->prepare($sql) ;
$exec->execute();
}

/////Ajouter par Lorenzo/enregistement d'un Lot/////////
function enregistrerEchantillon($NbEchantillon,$lot){
	require "connexion.php";
	$sql="Insert into gsblot_echantillon(gsblot_echantillon.numeroEchantillon,gsblot_echantillon.numeroLotEcht)
	VALUES('$NbEchantillon','$lot')";
	$exec=$bdd->prepare($sql) ;
	$exec->execute();
	}

///Ajouter par Lorenzo/consultation par Date//////
function ConsultationParDate($dateFabri){
 require "connexion.php";
 $sql ="SELECT gsblot_lot.numeroLot,gsblot_lot.nbEchantillon,gsblot_lot.idMedicamentLot, libelleMedicament  
 from gsblot_lot
 inner join gsblot_medicament on idMedicamentLot = idMedicament
  where gsblot_lot.dateFabrication = '$dateFabri'";
 $exec=$bdd->prepare($sql) ;
$exec->execute() ;
$curseur=$exec->fetchAll();
return $curseur;
}
///Ajouter par Lorenzo/consultation par Medicament//////
function ConsultationParMedic($idMedic){
require "connexion.php";
$sql ="SELECT gsblot_lot.numeroLot,gsblot_lot.nbEchantillon,gsblot_lot.dateFabrication from gsblot_lot where gsblot_lot.idMedicamentLot = $idMedic";
$exec=$bdd->prepare($sql) ;
$exec->execute() ;
$curseur=$exec->fetchAll();
return $curseur;
} 

//Partie Alexis
function getMedicaments()
{
	require "connexion.php";
	$sql = "SELECT *
	from GSBLOT_Medicament ";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}

function getVisiteurs()
{
	require "connexion.php";
	$sql = "SELECT *
	from GSBLOT_Utilisateur 
	inner join GSBLOT_typeUtilisateur on idTypeUtilisateur = idType
	where libelleType='visiteur'";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}

function getDateSorties()
{
	require "connexion.php";
	$sql = "select distinct(dateSortieStock)
	from gsblot_echantillon
	where dateSortieStock is not null ";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}

function verifNbEchantillon($idMedicament)
{
	require "connexion.php";
	$sql = "SELECT count(*) as nbEcht
	from GSBLOT_Echantillon
	inner join GSBLOT_lot on numeroLot = numeroLotEcht
	where idMedicamentLot=$idMedicament
	and dateSortieStock is null";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetch();
    return $curseur["nbEcht"];
}


function renseignerDate($date,$numeroEchantillon, $idMedicament, $idUtilisateur)
{
	require "connexion.php";
	$sql = "update gsblot_echantillon set dateSortieStock = '$date' , idUtilisateurEcht = $idUtilisateur
			where numeroLotEcht in (SELECT numeroLot
								from gsblot_lot
								inner join gsblot_medicament on idmedicamentlot = idmedicament
								where idmedicament = $idMedicament)
			and numeroEchantillon = $numeroEchantillon";
	
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $resultat = $bdd->query($sql);
}

function getMinNumEchtStocke($idMedicament)
{
	require "connexion.php";
	$sql = "SELECT min(numeroEchantillon) as mini 
	from GSBLOT_Echantillon
	inner join GSBLOT_lot on numeroLot = numeroLotEcht
	where idMedicamentLot=$idMedicament
	and dateSortieStock is null";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetch();
    return $curseur["mini"];
}

function getEchtStock(){
	require "connexion.php";
	$sql = "SELECT libelleMedicament , numeroEchantillon , numeroLotEcht
	from GSBLOT_Echantillon
	inner join GSBLOT_lot on numeroLotEcht = numeroLot
	inner join GSBLOT_Medicament on idmedicament = idMedicamentLot
	where dateSortieStock is null
    
	order by idmedicament,numeroLotEcht";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}

function getEchtSortisMedic($idMedicament)
{
	require "connexion.php";
	$sql = "SELECT libelleMedicament , numeroEchantillon , numeroLotEcht
	from GSBLOT_Echantillon
	inner join GSBLOT_lot on numeroLotEcht = numeroLot
	inner join GSBLOT_Medicament on idmedicament = idMedicamentLot
	where dateSortieStock is not null
    and idmedicament = $idMedicament
	
	order by idmedicament,numeroLotEcht";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}

function getEchtSortisDate($idDate)
{
	require "connexion.php";
	$sql = "SELECT dateSortieStock , numeroEchantillon , numeroLotEcht
	from GSBLOT_Echantillon
	inner join GSBLOT_lot on numeroLotEcht = numeroLot
	inner join GSBLOT_Medicament on idmedicament = idMedicamentLot
	where dateSortieStock is not null
    and dateSortieStock = '$idDate'
	
	order by idmedicament,numeroLotEcht";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}


function getEchtSortisVisiteur($idUtilisateur)
{
	require "connexion.php";
	$sql = "SELECT nom , prenom , numeroEchantillon , numeroLotEcht
	from GSBLOT_Echantillon
	inner join GSBLOT_lot on numeroLotEcht = numeroLot
	inner join GSBLOT_Medicament on idmedicament = idMedicamentLot
    inner join gsblot_utilisateur on idutilisateurecht = idutilisateur
	where dateSortieStock is not null
    and idUtilisateurEcht = $idUtilisateur
	
	order by idmedicament,numeroLotEcht";
	$exec=$bdd->prepare($sql);
    $exec->execute();
    $curseur=$exec->fetchall();
    return $curseur;
}
?>



