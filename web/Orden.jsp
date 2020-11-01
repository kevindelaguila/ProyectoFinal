<%@page import="Modelo.Orden"%>
<%@page import="DAO.OrdenDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Individual</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        <h1>Crear orden</h1>
        <%
            String idcliente = request.getParameter("idcliente");
            String idproducto = request.getParameter("idproducto");
            String cantidad = request.getParameter("cantidad");
            String total = request.getParameter("total");
            if(idcliente==null && idproducto==null && cantidad==null && total==null){
            %>
        <form action="Orden.jsp" method="POST">
            <div class="form-group">
                <label for="idcliente">Id Cliente</label> <br>  
        <input type="text" class="form-control" id="idcliente" name="idcliente"><br>
            </div>
            <div class="form-group">
                <label for="idproducto">Id Producto</label> <br>
        <input type="text" class="form-control" id="idproducto" name="idproducto" ><br>
            </div>            
            <div class="form-group">
                <label for="cantidad">Cantidad</label> <br>
        <input type="text" class="form-control" id="cantidad" name="cantidad" ><br>     
            </div>
            <div class="form-group">
                <label for="total">Total</label> <br>
        <input type="text" class="form-control" id="total" name="total" ><br><br>
            </div>
            <button type="submit" class="btn btn-primary">Crear Orden</button>
        </form>
        <%   
            }else{
                OrdenDao orden = new OrdenDao();
                Orden ord = new Orden(Integer.parseInt(idcliente),Integer.parseInt(idproducto),Integer.parseInt(cantidad),Integer.parseInt(total));
//System.out.println(client);
                orden.saveOrden(ord);
                        %>
            <div class="alert alert-success" role="alert">
                Cliente creado exitosamente <a href="TablaOrdenes.jsp">Ver Tabla Ordenes</a> 
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