<select name="objTecnico" id="objTecnico" onchange="mostrarCeldas()" class="selectW">
<option value="">T&eacute;cnico</option>
<?php 
require('conector.php');
$rs_tec = $conn->query("SELECT id,nombre FROM tecnico");
while($row_tec = $rs_tec->fetch_assoc()){
	echo "<option value='".$row_tec['id']."'>".$row_tec['nombre']."</option>";
}
echo "</select>";
?>
