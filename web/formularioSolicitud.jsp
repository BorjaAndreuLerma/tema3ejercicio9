<%-- 
    Document   : formularioSolicitud
    Created on : 28-sep-2016, 8:41:30
    Author     : alumno
--%>

<%@page import="entidad.datosformulario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<jsp:useBean id="usuario" scope="request" class="entidad.datosformulario" />
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Formulario de Solicitud Cita Médica</title>
    </head>
    <body>
        <% if ((request.getParameter("practica") == null
                    && request.getParameter("cantidad") == null)
                    || (request.getParameter("practica").equals("")
                    && request.getParameter("cantidad").equals(""))) { %>
        <form method="POST" action="formularioSolicitud.jsp">
            <h2>Solicitud de Autorización de Practicas Médicas</h2><br>
            Practica: <input type="text" name="practica" value="" /><br>
            Cantidad: <input type="text" name="cantidad" value="" /><br>
            <input type="submit" value="Enviar Solicitud" />            
        </form>
        <% } else { %>
        <% String practica;
            int cantidad;
            practica = request.getParameter("practica");
            cantidad = Integer.parseInt(request.getParameter("cantidad"));
        %>  
        <jsp:setProperty name="usuario" property="practica" value="<%= practica%>" />
        <jsp:setProperty name="usuario" property="cantidad" value="<%= cantidad%>" />
        <jsp:forward page="/formularioRespuesta.jsp"></jsp:forward>
        <% };%>
    </body>
</html>
