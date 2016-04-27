<?php
/* importar datos
 * verificar datos 
 * generar tarifa
 * generar texto para mail
 * enviar mail
**

function desmembrarIP($eval){
	$arrayIP = explode(".",$eval);
	return (int)$arrayIP[1];
}
*/
/*
//Truncar Proceso en caso de error
function died($error) {
	echo "Se encontraron errores al procesar los datos. ";
	echo "Estos son los errores que se produjeron.<br /><br />";
	echo $error."<br /><br />";
	echo "Por favor, regrese y corr&iacute;jalos.<br /><br />";
	echo "<input type=button name=back value=Atr&aacute;s onclick=history.back();>";
	die();
}
*/
/*
//verificar campos obligatorios ingresados manualmente
if	(
		!isset($_POST['mac']) ||
		!isset($_POST['cliente']) ||
		!isset($_POST['signal']) ||
		!isset($_POST['bridge']) ||
		!isset($_POST['mac'])
	) {
	died('Se encotraron errores al procesar los datos.');
}*/

//paso de variables HTML a PHP
$fecha			=	date('j\-m\-Y');			//automatico
$cliente		=	$_POST['cliente'];			//Convert the first character of each word to uppercase
$direccion		=	$_POST['direccion'];		//ingreso manual
$cp				=	$_POST['cp'];				//select automatico
$telefono		=	$_POST['telefono'];			//PARSE
$celular		=	$_POST['celular'];			//PARSE

$paneles		=	$_POST['objPaneles'];		//select automatico


$ip				=	$_POST['ip'];				//ingreso manual VALIDACION
$bridge			=	$_POST['bridge'];			//ingreso manual VALIDACION

$equipo			=	$_POST['equipo'];			//select automatico
$mac			=	$_POST['mac'];				//ingreso manual
$signal			=	$_POST['signal'];			//ingreso manual

//$servicio		=	$_POST['servicio'];			//select automatico
$tecnico		=	$_POST['objTecnico'];		//select automatico
//$segOct			=	desmembrarIP($ip);

$error_message	=	"";
/*
$string_exp = "/^[A-Za-z .'-]+$/";	
$stringNum_exp = "/^[0-9]$/";

if(!preg_match($string_exp,$cliente)) {
	$error_message .= 'El nombre parece ser inv&aacute;lido.<br />';
}

if(strlen($direccion) < 6) {
	$error_message .= 'La Direcci&oacute;n parece ser inv&aacute;lida.<br />';
}

if(strlen($nombres) < 3) {
	$error_message .= 'El nombre parece ser inv&aacute;lido.<br />';
}

if(!preg_match($stringNum_exp,$telefono)) {
	$error_message .= 'El tel&eacute;fono parece ser inv&aacute;lido.<br />';
}

if(!preg_match($stringNum_exp,$celular)) {
	$error_message .= 'El celular parece ser inv&aacute;lido.<br />';
}

if(strlen($error_message) > 0) {
	died($error_message);
	
}
*/

//armo mail
$mailDestino	=	"eamaral@citarella.com.ar";
$tituloMail1	=	"Cliente ".$tecnico;
$tituloMail2	=	"alta cliente";
$cuerpoCorreo1	= 	$fecha.
	"<br />Nombre:\t".ucwords($cliente).
	"<br />Direcci&oacute;n:\t".$direccion.
	"<br />C&oacute;digo Postal:\t".$cp.
	"<br />Tel&eacute;fono:\t".$telefono." // ".$celular.
	"<br />Panel:\t\t".$paneles."\t IP:".$ip." Bridge: [".$bridge."]".
	"<br />Equipo:\t".$equipo."\t".mb_strtoupper($mac).
	//"<br />Servicio:\t".$servicio."\t$".$tarifa.///////////////
	"<br />Instalador:\t".$tecnico;

echo (
	$fecha.
	"<br />Nombre:\t".ucwords($cliente).
	"<br />Direcci&oacute;n:\t".$direccion.
	"<br />C&oacute;digo Postal:\t".$cp.
	"<br />Tel&eacute;fono:\t".$telefono." // ".$celular.
	"<br />Panel:\t\t".$paneles."\t IP: 10.".$ip." Bridge: [".$bridge."]".
	"<br />Equipo:\t".$equipo."\t".mb_strtoupper($mac).
	//"<br />Servicio:\t".$servicio."\t$".$tarifa.////////////////
	"<br />Instalador:\t".$tecnico
);
$cuerpoCorreo2	= 	"queue simple add name=\"".$cliente."\" target=".$ip." max-limit=384k/384k";

mail($mailDestino,$tituloMail1,$cuerpoCorreo1);
//mail($mailDestino,$tituloMail2,$cuerpoCorreo2);

?>
