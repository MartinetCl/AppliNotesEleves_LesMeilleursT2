<center><h1> Authentification</h1></center>
<form method="POST" action="index.php?uc=auth&action=verif">
	<?php
	if (isset($_SESSION['error'])) echo '<div class="homePhone"><center>'.$_SESSION['error'].'</center></div>' ;
	?>
	<center><input type="text" id="loginUser" size="32" placeholder="Votre Pseudo" name="login" required></center><br>
	<center><input type="password" id="passwordUser" size="32" placeholder="******" name="mdp" required></center><br>
	<center><button type="submit">Valider</button></center>
</form>