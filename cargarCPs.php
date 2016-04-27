<?php

	include 'conector.php';
	
	$sql = "SELECT codigo,nombre FROM cp";
	$result = mysqli_query($conn, $sql);
	
	if (mysqli_num_rows($result) > 0) {
		while($row = mysqli_fetch_assoc($result)) {
			echo "<option value='".$row['codigo']."'>".$row['nombre']." (".$row['codigo'].")</option>
	";
		}
	}
	mysqli_close($conn);
?>
