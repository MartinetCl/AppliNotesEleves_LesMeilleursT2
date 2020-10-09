<center>
<h2>Veuillez saisir une note</h2>
</center>

<form method="POST" action="index.php?uc=saisieNote&action=ValidationNote">
	<div class = gigaBoite>
	<div class = boiteLabel>
	Numerateur de la note : <br>
	Denominateur de la note : <br>
	Coefficient de la note : <br>
	La matiere : <br>
	La trimestre : <br>
	L'année : <br>
</div>
	<div class = boite>
	<input type="number" name="noteNumera"> <br>
	<input type="number" name="noteDenomi"><br>
	<input type="number" name="coefficient"><br>

	<select name = "matiere">
	<?php 
	foreach ($lesMatiere as $laMatiere) {
	echo '<option value ='.$laMatiere['codeMat'].'>'.$laMatiere['libelleMat'].'</option>' ;
	}
 	?>
	
	</select><br>


	<select name = "trimestre">
	<?php 
	foreach ($lestrimestre as $leTrimestre) {
	echo '<option value ='.$leTrimestre['idTri'].'>'.$leTrimestre['libelleTri'].'</option>' ;
	}
 	?>
	
	</select><br>
	

	<input type="number" name="annee">
	<br> <br>
	<input type="submit" name="valider" value="Valider">
	</div>
</div>

</form>
