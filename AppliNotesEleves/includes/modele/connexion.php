<?php

$PARAM_hote='stadjutodmbd01.mysql.db'; // le chemin vers le serveur
$PARAM_port='';
$PARAM_nom_bd='stadjutodmbd01'; // le nom de votre base de données
$PARAM_utilisateur='stadjutodmbd01'; // nom d'utilisateur pour se connecter
$PARAM_mot_passe='cartApus01'; // mot de passe de l'utilisateur pour se connecter

try
{
    $bdd = new PDO('mysql:host='.$PARAM_hote.';dbname='.$PARAM_nom_bd, $PARAM_utilisateur, $PARAM_mot_passe);     
    $bdd->exec("SET CHARACTER SET utf8");
}
 
catch(Exception $e)
{
        echo 'Erreur : '.$e->getMessage().'<br />';
        echo 'N° : '.$e->getCode();
}
?>
