<br><br><center>
<div id="Home_title">Détail des notes par matières</div>
<br><br>
<table class="table table-striped">
	<thead>
		<tr>
			<th>Matière</th>
			<th>Moyenne</th>
			<th colspan = "5">Notes</th> 
		</tr>
	</thead>
	<tbody>
	<?php
	foreach ($lesMatières as $matière) {
		$moyenne = getMoyenneMatiere($matière['codeMat']);
		echo '<tr>';
		echo '<td>' . $matière['libelleMat'] . '</td>'
			. '<td>' . $moyenne . '</td>';
			$lesNotes = getLesNotes($matière['codeMat']);
			echo '<td colspan = "5">';
			foreach ($lesNotes as $notes){
				echo $notes['noteNumerateur'] . '/' .  $notes['noteDenominateur'] . '(' . $notes['coeffNote'] .')&nbsp&nbsp';
			}	
			echo '</td>';
		echo '</tr>';
	}
	?>
	</tbody>
	<thead>
		<tr>
			<?php echo '<th>Moyenne globale</th><th>' . $moyenneGlo . '</th>'; ?>
		</tr>
	</thead>
</table>
</center>	