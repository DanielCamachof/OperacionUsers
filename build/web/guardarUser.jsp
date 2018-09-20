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
    <title>ALTA</title>
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
      
    <%
      Class.forName("com.mysql.jdbc.Driver");
      Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud","root", "");
      Statement s = conexion.createStatement();
      
      request.setCharacterEncoding("UTF-8");
      String insercion = "INSERT INTO CLIENTE(NOMCLI,APECLI,DNICLI,TLFCLI,EMAILCLI) VALUES (" + "'" +  request.getParameter("NOMCLI")
                         + "','" + request.getParameter("APECLI")
                         + "','" + request.getParameter("DNICLI")
                         + "', '" + request.getParameter("TLFCLI")
                         + "', '" + request.getParameter("EMAILCLI") +"')";
      s.execute(insercion); 
      out.println("Usuario guardado correctamente.");
      conexion.close();
    %>
  </body>
  <footer class="page-footer font-small blue">
        <div class="footer-copyright text-center py-3">© 2018 Copyright, Derechos reservados.</div>
    </footer>
</html>

