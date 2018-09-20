<%-- 
    Document   : estilos.css
    Created on : 19/09/2018, 12:17:19 AM
    Author     : Daniel Camacho
--%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <title>INICIO</title>
    </head>
    <body>
        <nav class="navbar">
        <div class="container-fluid">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.jsp">Brothers news </a>
            </div>
            <ul class="nav navbar-nav">
                <li class="active"><a href="index.jsp">INICIO</a></li>
                <li><a href="formulariouser.jsp">AÑADIR USUARIO</a></li>
                <li><a href="Delete.jsp">BORRAR USUARIO</a></li>
                <li><a href="User.jsp">MODIFICAR USUARIO</a></li>
                
            </ul>
        </div>
    </nav>
        <div class="container">
            <div class="page-header">
                <div class="well"><h1>Bienvenido a la pagina donde veras todo tipo de noticias!</h1></div>
            </div>
        </div>
        <div class="container">
            <table class="table table-bordered">
                 <thead>
                        <tr>
                            <th>Código</th>
                            <th>Nombre</th>
                            <th>Apellidos</th>
                            <th>Edad</th>
                            <th>Email</th>
                            </tr>
                     </thead>
                <tbody id="tabla">
                    <%
                        Class.forName("com.mysql.jdbc.Driver");
                        Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root", "");
                        Statement s = conexion.createStatement();
                        ResultSet listado = s.executeQuery ("SELECT CODCLI, NOMCLI, APECLI, DNICLI, EMAILCLI FROM CLIENTE");
                        while (listado.next()) {
                    %>

                    <tr>
                        <td><%= listado.getString("CODCLI") %></td>
                        <td><%= listado.getString("NOMCLI") %></td>
                        <td><%= listado.getString("APECLI") %></td>
                        <td><%= listado.getString("DNICLI") %></td>
                        <td><%= listado.getString("EMAILCLI") %></td>
                    </tr>
                    <%
                        }
                        conexion.close();
                    %>
                </tbody>
            </table>
    <footer class="page-footer font-small blue">
        <div class="footer-copyright text-center py-3">© 2018 Copyright, Derechos reservados.</div>
    </footer>
    </body>
</html>