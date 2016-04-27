<!DOCTYPE html>
<head>
<script src="ajax.js" type="text/javascript"></script>

<style>
.selectW {
	width: 383px;
}
body {
	font-family: sans-serif;
	font-style: normal;
	font-size: 100%;
	font-weight: normal;
}
</style>


</head>
<body>
Instalaci&oacute;n<br /><br />
	<form name="enviarMail" id="enviarMail" method="post" action="enviar.php">
        <div id="listaTecnicos">
			<?php include('tecnicos.php'); ?>
        </div>
        <div id="listaCeldas">
        </div>
        <div id="listaPaneles">
        </div>
        <br />
        <input name="mac" id="mac" type="text" value="MA:CA:DD:RE:SS:xx" size="50" maxlength="17" />
        <input name="cliente" id="cliente" type="text" value="Apellido Nombre" size="50" />
        <br />
        <br />
        <select name="ip" id="ip" size="1" class="selectW" onchange="infoIP()">
        	<?php include 'cargarIPs.php' ?>
        </select>
        <select name="bridge" id="bridge" size="1" class="selectW">
        	<?php include 'cargarBridges.php' ?>
        </select>
        <div id="infoIP">
	        <input type="text" name="objIP" id="objIP" class="selectW">
        </div>
        <select name="equipo" id="equipo" size="1" class="selectW">
			<option value="">Equipo</option>
            <?php include 'cargarEquipos.php' ?>
		</select>
        <br />
        <br />
        <input type="text" name="signal" id="signal" value="signal" size="50" maxlength="11" />
        <input type="text" name="direccion" id="direccion" value="Direccion" size="50" maxlength="50" />
        <input type="text" name="telefono" id="telefono" value="Tel&eacute;fono" size="50" maxlength="50" />
        <input type="text" name="celular" id="celular" value="Celular" size="50" maxlength="50" />
        <br />
        <select id="cp" name="cp" size="1" class="selectW">
			<option value=''>C&oacute;digo Postal</option>
            <?php include 'cargarCPs.php' ?>
		</select>
        <br />
        <br />
        <input type="submit" name="enviar" id="enviar" title="enviar">
	</form>
</body>
</html>
