<%-- 
    Document   : Individual
    Created on : 24/10/2020, 22:41:47
    Author     : famil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Individual</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">        
    </head>
    <body>
        <h1>Cliente Individual</h1>
        <h2>Ingrese la informacion solicitada</h2>
        <label>Id</label> <br>
        <input type="text" name="Id" placeholder="Id"><br>
        <label>Nombre</label> <br>
        <input type="text" name="Nombre" placeholder="Nombre"><br>
        <label>Apellido</label> <br>
        <input type="text" name="Apellido" placeholder="Apellido"><br>     
        <label>Telefono</label> <br>
        <input type="text" name="Telefono" placeholder="Telefono"><br><br>
        <button type="submit" class="btn btn-outline-primary">Crear Cliente</button><br>
        <form action="Clientes.jsp">
            <button type="submit" class="btn btn-outline-danger">Regresar a Clientes</button>
        </form>
    </body>
</html>
