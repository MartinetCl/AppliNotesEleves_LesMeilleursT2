<?php
session_start();
date_default_timezone_set('Europe/Paris');
ini_set('display_errors', 1);
include "includes/header.php";
include "includes/modele/connexion.php" ;
include "includes/modele/gestion_bdd.php" ;
if (!isset($_REQUEST['uc']))
{
    include "vues/v_authentification.php" ;
}
else
{
    if ($_REQUEST['uc']=='decnx') {
        session_destroy();
        header("Location:index.php");
    }
	 else 
	{
		include "controleur/c_principal.php" ;
	}
}
?>