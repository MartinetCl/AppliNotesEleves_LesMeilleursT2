<?php 
if (isset($_REQUEST['action'])) 
{
    $action = $_REQUEST['action'];
    switch ($action)
    {
        case "verif" :    {   
			$login = $_REQUEST['login'];
			$mdp = $_REQUEST['mdp'];
			$result= connect($login, $mdp) ;
			if ($result)    
			{	
			header ("Location:index.php?uc=saisieNote") ; 	
			}
			else 
			{
				$_SESSION['error'] = "Identification incorrecte";
				header ("Location:index.php") ;
			}
			break ;
	   }

    }
}
?>
