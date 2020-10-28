<%-- 
    Document   : Empresa
    Created on : 24/10/2020, 22:41:54
    Author     : famil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Empresa</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <h1>Empresa</h1>
        <h1>Cliente Empresa</h1>
        <h2>Ingrese la informacion solicitada</h2>
        <label>Id</label> <br>
        <input type="text" name="Id" placeholder="Id"><br>
        <label>Nombre de la Empresa</label> <br>
        <input type="text" name="Empresa" placeholder="Nombre de la empresa"><br>
        <label>Direccion</label> <br>
        <input type="text" name="Direccion" placeholder="Direccion"><br>     
        <label>Contacto</label><br>
        <input type="text" name="Contacto" placeholder="Contacto"><br><br>
        <button type="submit" class="btn btn-outline-primary">Crear Empresa</button><br>
        <form action="Clientes.jsp">
            <button type="submit" class="btn btn-outline-danger">Regresar a menu</button>
        </form>
    </body>
</html>
