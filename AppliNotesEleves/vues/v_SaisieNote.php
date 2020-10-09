<h2>Veuillez saisir une note</h2>

<form>
	<div class = gigaBoite>
	<div class = boite>
	Numerateur de la note : <br>
	Denominateur de la note : <br>
	Coefficient de la note : <br>
	La matiere : <br>
	La trimestre : <br>
	L'année : <br>
</div>
	<div class = boite>
	<input type="number" name="noteNumera">
	<input type="number" name="noteDenomi">
	<input type="number" name="coefficient">

	<select name = "matiere">
	<?php 
	foreach ($lesMatiere as $laMatiere) {
	echo '<option value ='.$laMatiere['codeMat'].'>'.$laMatiere['libelleMat'].'</option>' ;
	}
 	?>
	
	</select>


	<select name = "trimestre">
	<?php 
	foreach ($lestrimestre as $leTrimestre) {
	echo '<option value ='.$leTrimestre['idTri'].'>'.$leTrimestre['libelleTri'].'</option>' ;
	}
 	?>
	
	</select>
	

	<input type="number" name="annee">
	</div>
</div>

</form>