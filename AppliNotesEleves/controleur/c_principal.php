<?php
if (isset($_REQUEST['uc']))
{
	switch ($_REQUEST['uc'])
	{
		case 'auth' : {  include "c_authentification.php" ; break ;} 
		case 'production' : {  include "c_production.php" ; break ;} 	
        case 'magasin' : {  include "c_magasinier.php" ; break ;}
		case 'visite' : {  include "c_visiteur.php" ; break ;}
	}
}
?>