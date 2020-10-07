<?php
if (!isset($_REQUEST['uc'])){
	$_REQUEST['uc'] = "auth" ;
}


	switch ($_REQUEST['uc'])
	{
		case 'auth' : {  include "c_authentification.php" ; echo "test" ;break ;} 
		case 'saisieNote' : {  include "c_saisieNote.php" ; break ;} 
		case 'AffichageBulletin' : {  include "c_affichage.php" ; break ;}	
	}

?>