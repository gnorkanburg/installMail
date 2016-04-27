<?php

	include 'conector.php';
	
	$sql = "SELECT nombre FROM equipo";
	$result = mysqli_query($conn, $sql);
	
	if (mysqli_num_rows($result) > 0) {
		while($row = mysqli_fetch_assoc($result)) {
			echo "<option value='".$row['nombre']."'>".$row['nombre']."</option>
	";
		}
	}
	mysqli_close($conn);
?>
