<?php
if (isset($_REQUEST['uc']))
{
	switch ($_REQUEST['uc'])
	{
		case 'auth' : {  include "c_authentification.php" ; break ;} 
		case 'saisieNote' : {  include "c_saisieNote.php" ; break ;}
		case 'consulterNote' : { include "c_conculterNote.php" ; break; }
	}
}
?>