<center>
<h2>Veuillez saisir une note</h2>
</center>

<form method="POST" action="index.php?uc=saisieNote&action=ValidationNote">
	<div class = gigaBoite>
	<div class = boite>
	<input type="number" placeholder="Numérateur de la note "name="noteNumera"> <br>
	<input type="number" placeholder="dénomintaeur de la note " name="noteDenomi"><br>
	<input type="number" placeholder="coefficient " name="coefficient" pattern = "[0-9]{0,2}.[0-9]{0,2}"><br>

	<div class = "cb"><select name = "matiere">
	<?php 
	foreach ($lesMatiere as $laMatiere) {
	echo '<option value ='.$laMatiere['codeMat'].'>'.$laMatiere['libelleMat'].'</option>' ;
	}
 	?>
	
	</select></div><br>


	<div class = "cb"><select name = "trimestre">
	<?php 
	foreach ($lestrimestre as $leTrimestre) {
	echo '<option value ='.$leTrimestre['idTri'].'>'.$leTrimestre['libelleTri'].'</option>' ;
	}
 	?>
	
	</select></div><br>
	

	<input type="number" placeholder="année" name="annee">
	<br> <br>
	<div class="button"><input type="submit" name="valider" value="Valider"></div>
	</div>
</div>

</form>
