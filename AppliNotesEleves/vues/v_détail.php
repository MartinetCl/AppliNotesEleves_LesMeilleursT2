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
		$moyenne = getMoyenneMatière(matière);
		echo '<tr>'
			. '<td>' . $matière['libelleMat'] . '</td>';
			. '<td>' . $moyenne. '</td>';
			$lesNotes = getLesNotes($matière['code']);
			foreach ($lesNotes as $notes){
				echo '<tr>'
				. '<td>' . $notes['noteNumerateur'] . '/' .  $notes['noteDenominateur'] . '(' . $notes['coeffNote'] .')</td>';
			}
		. '</tr>';	
	}
	?>
	</tbody>
</table>
</center>	