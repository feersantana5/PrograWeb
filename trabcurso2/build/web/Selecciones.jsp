<%-- 
    Document   : Selecciones
    Created on : 08-ene-2019, 14:53:15
    Author     : Santana
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="control.ManejadorBaseDeDatos"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Selecciones</title>
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

        <h1 id="encabezado">¡Bienvenido a la página de las selecciones!</h1>
        <br><br>
        <h3 id="descripcion">Seleccione el país del que desee tener información: </h3>

        <form id="form" action="servletnacionalidad">

            <div class="cent">
                <div class="select">        
                    <select id="slct" name="listanacionalidades">
                        <option>Espana</option>
                        <option>Francia</option>
                        <option>Brasil</option>
                        <option>Inglaterra</option>                        
                        <option>Argentina</option>
                    </select>
                </div>   
                <br>
                <input type="submit" value="Obtener informacion" name="boton" />
            </div>
        </form>   
    </body>
</html>
