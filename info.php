<?php 

/*

10.(celda.octeto).(panel.octeto).(select.value)

*/


require('conector.php');
$rs_ipCelda = $conn->query("SELECT celda.octeto FROM celda WHERE celda.id=".$_POST['idCel']);

$rs_ipPanel = $conn->query("SELECT panel.octeto FROM celda WHERE celda.id=".$_POST['idPanel']);

while($row_ipCelda = $rs_ipCelda->fetch_assoc()){
	echo $row_ipCelda['octeto'];
}

while($row_ipPanel = $rs_ipCelda->fetch_assoc()){
	echo $row_ipPanel['octeto'];
}
//echo "10.".$_POST['celda.octeto'].".".$_POST['panel.octeto'].".".$_POST['idIP'];
?>
