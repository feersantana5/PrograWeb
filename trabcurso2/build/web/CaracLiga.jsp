<%-- 
    Document   : CaracLiga
    Created on : 08-ene-2019, 2:30:50
    Author     : Santana
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="control.ManejadorBaseDeDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Características de las ligas</title>
        <link rel="stylesheet" type="text/css" href="estilo.css">
    </head>

    <body>

        <!-- Barra navegacion -->
        <header id="main-header">
            <a id="logo-header" href="#">
                <span class="site-name">TC2 Fernando Santana</span>
                <span class="site-desc">Programación de Redes, Sistemas y Servicios</span>
            </a> 
        </header>

        <h1 id="encabezado">¡BIENVENIDO A LA PÁGINA DE LAS LIGAS!</h1>
        
        <% ManejadorBaseDeDatos manejador = new ManejadorBaseDeDatos();
            ArrayList<String> ligas = new ArrayList();
            ligas = manejador.obtenerLigas();%>
        <br><br>
        
        <h3 id="descripcion">Seleccione la liga de la que quiera obtener información: </h3>

        <form id="form" action="servletcaracliga">
            <div class="cent">
                <div class="select">
                    <select id="slct" name="listaligas">
                        <%
                            for (int i = 0; i < ligas.size(); i++) {
                                String temp = ligas.get(i);
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
                <input type="submit" value="Obtener información" name="boton" />
            </div>
        </form>
    </body>
</html>
