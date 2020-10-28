<%-- 
    Document   : Orden
    Created on : 24/10/2020, 22:33:33
    Author     : famil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Orden</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">        
    </head>
    <body>
        <h1>Orden</h1>
        <label>Id Cliente</label> <br>
        <input type="text" name="Id" placeholder="Id"><br>
        <label>Producto</label> <br>
        <input type="text" name="Producto" placeholder="Producto"><br>
        <label>Cantidad</label> <br>
        <input type="text" name="Apellido" placeholder="Apellido"><br>     
        <label>Total</label> <br>
        <input type="text" name="Telefono" placeholder="Telefono"><br><br>
        <button type="submit" class="btn btn-outline-primary">Crear Orden</button><br>
        <form action="Menu.jsp">
            <button type="submit" class="btn btn-outline-danger">Regresar a menu</button>
        </form>
    </body>
</html>
