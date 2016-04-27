<select name="objCelda" id="objCelda" onchange="mostrarPaneles()" class="selectW">
<option value="">Celdas</option>
<?php 
require('conector.php');

$rs_cel = $conn->query("
	SELECT	tecnico.localidadID,
			tecnico.nombre,
			celda.id		AS id,
			celda.localidadID,
			celda.nombre	AS nombre
	FROM tecnico
	JOIN celda ON tecnico.localidadID = celda.localidadID
	WHERE tecnico.id = '".$_POST['idTec']."'
	ORDER BY celda.nombre
");

while($row_cel = $rs_cel->fetch_assoc()){
	echo "<option value='".$row_cel['id']."'>".$row_cel['nombre']."</option>";
}
echo "</select>";
?>
