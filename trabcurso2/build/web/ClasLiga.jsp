<%-- 
    Document   : ClasLiga
    Created on : 08-ene-2019, 3:59:45
    Author     : Santana
--%>


<%@page import="java.util.ArrayList"%>
<%@page import="control.ManejadorBaseDeDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clasificaciones</title>
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


        <% ManejadorBaseDeDatos manejador = new ManejadorBaseDeDatos();
            ArrayList<String> ligas = new ArrayList();
            ligas = manejador.obtenerLigas();%>
        <br><br>
        <h3 id="encabezado">Seleccione la liga cuya clasificacion desee ver:</h3>

        <form id="form" action="servletclasliga">
            <div class="cent">
                <div class="select">
                    <select id="slct"  name="listaligas">
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
