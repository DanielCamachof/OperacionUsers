<%-- 
    Document   : estilos.css
    Created on : 19/09/2018, 12:17:19 AM
    Author     : Daniel Camacho
--%>
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
                    <a class="navbar-brand" href="index.jsp">Brothers news</a>
                </div>
                <ul class="nav navbar-nav">
                    <li class="active"><a href="index.jsp">INICIO</a></li>
                    <li><a href="formulariouser.jsp">AÑADIR USUARIO</a></li>
                    <li><a href="Delete.jsp">BORRAR USUARIO</a></li>
                    <li><a href="User.jsp">MODIFICAR USUARIO</a></li>
                    
                </ul>
            </div>
        </nav>
        
        <H1>Formulario de datos personales del usuario.</H1>
        </br>
        
        <form  class="navbar-form navbar-left" action="guardarUser.jsp"  method="post" style="margin-left: 100px" >
            <div class="form-group">
                <label for="nombre">Nombre</label>
                <input type="text" class="form-control" name="NOMCLI" required="">
            </div>
            <div class="form-group" style="margin-left: 20px">
                <label for="apellidos">Apellidos</label>
                <input type="text" class="form-control" name="APECLI" required="">
            </div>
            </br>
            <div class="form-group" style="margin-top: 50px" style="margin-right: 20px">
                <label for="DNI">Edad</label>
                <input type="text" class="form-control" name="DNICLI" required="" pattern="([0-9]{2})">
            </div>
            </br>
            <div class="form-group" style="margin-top: 50px" >
                <label for="tlf">Celular</label>
                <input type="text" class="form-control" name="TLFCLI" required="" pattern="[3-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]">
            </div>
            </br>
            <div class="form-group" style="margin-top: 50px" >
                <label for="email">Email</label>
                <input type="text" class="form-control" name="EMAILCLI" required="">
            </div>
            </br>
            
            <input type="submit" value="Enviar" style="margin-top: 100px" >
            
        </form>
    <footer class="page-footer font-small blue">
        <div class="footer-copyright text-center py-3">© 2018 Copyright, Derechos reservados.</div>
    </footer>
    </body>
</html>
