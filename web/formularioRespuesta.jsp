<%@page import="entidad.datosformulario"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : formularioRespuesta
    Created on : 28-sep-2016, 8:42:25
    Author     : alumno
--%>

<%@page contentType="text/html;UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<jsp:useBean id="usuario" scope="request" class="entidad.datosformulario" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Respuesta Médica</title>
    </head>
    <body>  
        <b>Respuesta a su petición:</b><br>
        <b>Práctica</b>: <jsp:getProperty name="usuario" property="practica"/><br>
        <b>Cantidad</b>: <jsp:getProperty name="usuario" property="cantidad"/><br>
        <b>Estado</b>: <jsp:getProperty name="usuario" property="estado"/>
        <jsp:getProperty name="usuario" property="razon_no"/>        
    </body>
</html>
