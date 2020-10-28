<%-- 
    Document   : Productos
    Created on : 24/10/2020, 22:33:15
    Author     : famil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Productos</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    </head>
    <body>
        <h1>Productos</h1>
        <label>Id</label> <br>
        <input type="text" name="Id" placeholder="Id"><br>
        <label>Nombre del Producto</label> <br>
        <input type="text" name="Nombre" placeholder="Nombre de producto"><br>
        <label>Descripcion</label> <br>
        <input type="text" name="Descripcion" placeholder="Descripcion"><br>     
        <label>Precio</label> <br>
        <input type="text" name="Precio" placeholder="Precio"><br><br>
        <button type="submit" class="btn btn-outline-primary">Crear Producto</button><br>
        
        <form action="Menu.jsp">
            <button type="submit" class="btn btn-outline-danger">Regresar a menu</button>
        </form>
    </body>
</html>
