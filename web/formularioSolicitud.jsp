<%-- 
    Document   : formularioSolicitud
    Created on : 28-sep-2016, 8:41:30
    Author     : alumno
--%>

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
        <% if((request.getParameter("name")==null
                && request.getParameter("email")==null)
                || 
                (request.getParameter("name").equals("")
                && request.getParameter("email").equals(""))
                ){ %>
        <form method="POST" action="formularioRespuesta.jsp">
            <h2>Solicitud de Autorización de Practicas Médicas</h2><br>
            Practica: <input type="text" name="practica" value="" /><br>
            Cantidad: <input type="text" name="cantidad" value="" /><br>
            <input type="submit" value="Enviar Solicitud" />            
        </form>
        <% } else { %>
        <% String practica;
            int cantidad;%>
        <% double concesion = Math.random();
            double razon = Math.random();
            String estado = " ", razon_no = " ";

            if (concesion < 0.5) {
                estado = "Petición Autorizada.";
            } else {
                estado = "Petición Denegada. ";
                if (razon < 0.33) {
                    razon_no = "Usted tiene demasiadas peticiones realizadas este mes.";
                }
                if (razon < 0.66 && razon > 0.33) {
                    razon_no = "No disponemos de esa cantidad.";
                }
                if (razon > 0.66) {
                    razon_no = "No queremos darselo.";
                }
            }
        %>
        <% 
                practica = request.getParameter("practica");
                cantidad = Integer.parseInt(request.getParameter("cantidad"));
        %>  
        <jsp:setProperty name="usuario" property="practica" value="<%= practica%>" />
        <jsp:setProperty name="usuario" property="cantidad" value="<%= cantidad%>" />
        <jsp:setProperty name="request" property="estado" value="<%= estado%>" />
        <jsp:setProperty name="request" property="razon_no" value="<%= razon_no%>" />
        <jsp:forward page="/formularioRespuesta.jsp"></jsp:forward>
        <% };%>
    </body>
</html>
