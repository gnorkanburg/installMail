function objetoAjax(){
    var xmlhttp=false;
    try {
        xmlhttp = new ActiveXObject("Msxml2.XMLHTTP");
    } catch (e) {
        try {
           xmlhttp = new ActiveXObject("Microsoft.XMLHTTP");
        } catch (E) {
            xmlhttp = false;
        }
    }
 
    if (!xmlhttp && typeof XMLHttpRequest!='undefined') {
        xmlhttp = new XMLHttpRequest();
    }
    return xmlhttp;
}
 
function mostrarCeldas(){
 
    divResultado	=	document.getElementById('listaCeldas');
    tec				=	document.getElementById('objTecnico').value;
 
    ajax=objetoAjax();
    ajax.open("POST", "celdas.php");
    ajax.onreadystatechange=function() {
        if (ajax.readyState==4) {
            divResultado.innerHTML = ajax.responseText
        }
    }
    ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    ajax.send("idTec="+tec)
} 
 
function mostrarPaneles(){
 
    divResultado	=	document.getElementById('listaPaneles');
    cel				=	document.getElementById('objCelda').value;
 
    ajax=objetoAjax();
    ajax.open("POST", "paneles.php");
    ajax.onreadystatechange=function() {
        if (ajax.readyState==4) {
            divResultado.innerHTML = ajax.responseText
        }
    }
    ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    ajax.send("idCel="+cel)
}
 
function infoIP(){
 
    divResultado	=	document.getElementById('infoIP');
    ip				=	document.getElementById('objIP').value;
 
    ajax=objetoAjax();
    ajax.open("POST", "infoIP.php");
    ajax.onreadystatechange=function() {
        if (ajax.readyState==4) {
            divResultado.innerHTML = ajax.responseText
        }
    }
    ajax.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
    ajax.send("idIP="+ip)
} 
