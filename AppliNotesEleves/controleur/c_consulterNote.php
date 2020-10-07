<?php
<?php
if (!isset($_REQUEST['action']))
	$action = "détail" ;
else
	$action = $_REQUEST['action'] ;
switch{
	case "détail" : {
		$notes = getLesNotes();
		$trimestre = getTrimestre();
		$matière = getLesMatieres();
	}
	case "moyenne" : {
		$notes = getLesNotes();
		$matière = getLesMatieres();
	}
}
?>