<center><form method = "POST" action = "index.php?uc=AffichageBulletin&action=détail">
<?php
	foreach($lAnnee as $annee){
		echo '
		<input type = "radio" id = "' . $annee['idAnnee'] . '" name = "annee" value = "' . $annee['idAnnee'] .'"><label for="' . $annee['idAnnee'] . '">' . $annee['libelleAnnee'] . '</label>';
	}
	echo '<br><br>';
	foreach($leTrimestre as $trimestre){
		echo '
		<input type = "radio" id = "' . $trimestre['idTri'] . '" name = "trimestre" value = "' . $trimestre['idTri'] . '"><label for="' . $trimestre['idTri'] . '">' . $trimestre['libelleTri'] . '</label>';
	}
?>
<br><br>
<input type = "submit" name = "valider" value = "Valider">
</form></center>