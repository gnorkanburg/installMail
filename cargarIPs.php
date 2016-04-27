<?php
	echo "<option value=''>IP</option>";
	for ($i=2;$i <= 254;$i=$i+4) {
		echo "<option value='".$i."'>".$i."</option>
		";
	}
?>
