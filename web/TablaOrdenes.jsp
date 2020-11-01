<%-- 
    Document   : TablaEmpresas
    Created on : 30/10/2020, 22:19:08
    Author     : famil
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="DAO.OrdenDao" %>
        <%@page import="Modelo.Orden" %>
        <%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        <h1>Lista de Ordenes</h1>
        <table class="table table-striped">
            <thead class="thead-dark">
              <tr>
                <th scope="col">#</th>
                <th scope="col">Id Cliente</th>
                <th scope="col">Id producto</th>
                <th scope="col">Cantidad</th>
                <th scope="col">Total</th>
                
              </tr>
            </thead>
            <tbody>
              <%
              //1. Crear una instancia DAO correpondiente a las carreras
              OrdenDao orden = new OrdenDao();
              //2. Obtener todas las carreras de la base de datos
              List<Orden> ordenes = orden.getDBOrden();
              //3. Iterar todas las carreras
              int i=0;
              for( Orden ord : ordenes){
              //4. Pintar el HTML que correponde a cada carrera
                i++;
              %>
              <tr>
                <th scope="row"><%=i%></th>
                <td><%=ord.getIdcliente()%></td>
                <td><%=ord.getIdproducto()%></td>
                <td><%=ord.getCantidad()%></td>
                <td><%=ord.getTotal()%></td>

              </tr>
              <% 
               }
              %>              
            </tbody>
          </table>
        <form action="Orden.jsp">
          <button type="submit" class="btn btn-secondary">Regresar Orden</button>
        </form>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>
