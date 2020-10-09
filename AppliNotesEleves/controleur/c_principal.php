<?php
if (!isset($_REQUEST['uc'])){
    include "vues/v_authentification.php" ;
}
else{
	switch ($_REQUEST['uc'])
	{
		case 'auth' : {  include "c_authentification.php" ; break ;} 
		case 'decnx' : { include "includes/modele/deconnexion.php" ; break ;}
		case 'saisieNote' : {  include "c_saisieNote.php" ;  break ;} 
		case 'AffichageBulletin' : {  include "c_affichage.php" ; break ;}	
	}
}

?>