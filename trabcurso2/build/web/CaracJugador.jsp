<%-- 
    Document   : CaracJugador
    Created on : 08-ene-2019, 3:17:27
    Author     : Santana
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="control.ManejadorBaseDeDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Características de los jugadores</title>
        <link rel="stylesheet" type="text/css" href="estilo.css">
    </head>

    <body>
<!-- barra navegacion -->
        <header id="main-header">
            <a id="logo-header" href="#">
                <span class="site-name">TC2 Fernando Santana</span>
                <span class="site-desc">Programación de Redes, Sistemas y Servicios</span>
            </a> 
        </header>

        <h1 id="encabezado">¡BIENVENIDO A LA PÁGINA DE LOS JUGADORES!</h1>
        
        <% ManejadorBaseDeDatos manejador = new ManejadorBaseDeDatos();
            ArrayList<String> jugadores = new ArrayList();
            jugadores = manejador.obtenerJugadores();%>
        <br><br>
        
        <h3 id="descripcion">Seleccione el jugador del que quiera obtener información: </h3>
        <form id="form" action="servletcaracjugador">

            <div class="cent">
                <div class="select">
                    <select id="slct" name="listajugadores">
                        <%
                            for (int i = 0; i < jugadores.size(); i++) {
                                String temp = jugadores.get(i);
                        %>
                        <option>
                            <%
                                out.println(temp + "<br>");
                            %>
                        </option>
                        <%}
                            manejador.cerrar();
                        %>
                    </select>
                </div>   
                <br>
                <input type="submit" value="Obtener informacion" name="boton" />
            </div>
        </form>   
    </body>
</html>
