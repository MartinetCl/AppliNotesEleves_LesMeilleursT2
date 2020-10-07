<br><br><center>
<div id="Home_title">Détail des notes par matières</div>
<br><br>
<table class="table table-striped">
	<thead>
		<tr>
			<th>Matière</th>
			<th>Notes</th> 
		</tr>
	</thead>
	<tbody>
	<?php
	foreach ($lesMatières as $matière) {
		echo '<tr>'
			. '<td>' . $matière[''] . '</td>';
			foreach ($lesNotes as $notes){
				echo '<tr>'
				. '<td>' . $notes[''] . '/' .  $notes[''] . '</td>';
			}
		. '</tr>';	
	}
	?>
	</tbody>
</table>
</center>	