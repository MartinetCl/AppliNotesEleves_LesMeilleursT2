<?php
session_start();
date_default_timezone_set('Europe/Paris');
ini_set('display_errors', 1);
//include "includes/modele/connexion.php" ;
include "includes/modele/gestion_bdd.php" ;
include "includes/header.php";
include "controleur/c_principal.php";

?>