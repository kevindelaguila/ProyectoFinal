<%-- 
    Document   : Individual
    Created on : 24/10/2020, 22:41:47
    Author     : famil
--%>

<%@page import="Modelo.Producto"%>
<%@page import="DAO.ProductoDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Individual</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        <h1>Ingresar Productos</h1>
        <%
            String idproducto = request.getParameter("idproductos");
            String nombreproducto = request.getParameter("nombreproductos");
            String descripcionproducto = request.getParameter("descripcionproductos");
            String precioproducto = request.getParameter("precioproductos");
            if(idproducto==null && nombreproducto==null && descripcionproducto==null && precioproducto==null){
            %>
        <form action="Productos.jsp" method="POST">
            <div class="form-group">
                <label for="idproductos">Id</label> <br>  
                <input type="text" class="form-control" id="idproductos" name="idproductos" placeholder="Id"><br>
            </div>
            <div class="form-group">
                <label for="nombreproductos">Nombre</label> <br>
        <input type="text" class="form-control" id="nombreproductos" name="nombreproductos" placeholder="Nombre" ><br>
            </div>            
            <div class="form-group">
                <label for="descripcionproductos">Descripcion</label> <br>
        <input type="text" class="form-control" id="descripcionproductos" name="descripcionproductos" ><br>     
            </div>
            <div class="form-group">
                <label for="precioproductos">Precio</label> <br>
        <input type="text" class="form-control" id="precioproductos" name="precioproductos" ><br><br>
            </div>
            <button type="submit" class="btn btn-primary">Crear Producto</button><hr>
        </form>
        <%   
            }else{
                ProductoDao producto = new ProductoDao();
                Producto prod = new Producto(Integer.parseInt(idproducto),nombreproducto,descripcionproducto,Integer.parseInt(precioproducto));
//System.out.println(client);
producto.saveProducto(prod);
                        %>
            <div class="alert alert-success" role="alert">
                Producto registrado exitosamente <a href="TablaProducto.jsp">Ver Tabla de productos</a> 
            </div>
            <%
            }
            %>
            
        <form action="Menu.jsp">
            <button type="submit" class="btn btn-outline-danger">Regresar a Menu</button>
        </form><br>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>