<select name="objPaneles" id="objPaneles" class="selectW">
<option value="">Paneles</option>
<?php 
require('conector.php');
$rs_pan = $conn->query("
	SELECT  celda.id		AS CeldaID,
			celda.nombre	AS Celda,
			panel.id		AS id,
			panel.nombre	AS nombre,
			panel.celdaID,
			panel.octeto 
	FROM panel 
	JOIN celda ON panel.celdaID = celda.id
	WHERE celda.id = ".$_POST['idCel']."
	ORDER BY panel.octeto
");
while($row_pan = $rs_pan->fetch_assoc()){
	echo "<option value='".$row_pan['id']."'>".$row_pan['nombre']." (".$row_pan['octeto'].")</option>";
}
echo "</select>";
?>
