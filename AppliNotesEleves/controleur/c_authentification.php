<?php 
var_dump($_REQUEST);
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
				if ($_SESSION['idTypeUtilisateur']== 0)
				{
					header ("Location:index.php?uc=production") ; 
				}
				else if($_SESSION['idTypeUtilisateur']== 1)
				{
					header ("Location:index.php?uc=magasin") ; 
				}
				else{
					header ("Location:index.php?uc=visite") ; 
				}
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
