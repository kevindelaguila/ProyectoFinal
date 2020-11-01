<%-- 
    Document   : TablaEmpresas
    Created on : 30/10/2020, 22:19:08
    Author     : famil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.ProductoDao" %>
        <%@page import="Modelo.Producto" %>
        <%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        <h1>Lista de Carreras</h1>
        <table class="table table-striped">
            <thead class="thead-dark">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Id</th>
                <th scope="col">Nombre</th>
                <th scope="col">Descripcion</th>
                <th scope="col">Precio</th>
                
              </tr>
            </thead>
            <tbody>
              <%
              //1. Crear una instancia DAO correpondiente a las carreras
              ProductoDao producto = new ProductoDao();
              //2. Obtener todas las carreras de la base de datos
              List<Producto> prod = producto.getDBProducto();
              //3. Iterar todas las carreras
              int i=0;
              for( Producto productos : prod){
              //4. Pintar el HTML que correponde a cada carrera
                i++;
              %>
              <tr>
                <th scope="row"><%=i%></th>
                <td><%=productos.getIdproducto()%></td>
                <td><%=productos.getNombreproductos()%></td>
                <td><%=productos.getDescripcionproductos()%></td>
                <td><%=productos.getPrecioproductos()%></td>
              </tr>
              <% 
               }
              %>              
            </tbody>
          </table>
        <form action="Productos.jsp">
          <button type="submit" class="btn btn-secondary">Regresar Menu</button>
        </form>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>
