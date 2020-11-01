<%-- 
    Document   : Individual
    Created on : 24/10/2020, 22:41:47
    Author     : famil
--%>

<%@page import="Modelo.ClienteIndividual"%>
<%@page import="DAO.IndividualDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Individual</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        <h1>Cliente Individual</h1>
        <%
            String id = request.getParameter("id");
            String nombre = request.getParameter("nombre");
            String apellido = request.getParameter("apellido");
            String telefono = request.getParameter("telefono");
            if(id==null && nombre==null && apellido==null && telefono==null){
            %>
        <form action="Individual.jsp" method="POST">
            <div class="form-group">
                <label for="id">Id</label> <br>  
        <input type="text" class="form-control" id="id" name="id"><br>
            </div>
            <div class="form-group">
                <label for="nombre">Nombre</label> <br>
        <input type="text" class="form-control" id="nombre" name="nombre" ><br>
            </div>            
            <div class="form-group">
                <label for="apellido">Apellido</label> <br>
        <input type="text" class="form-control" id="apellido" name="apellido" ><br>     
            </div>
            <div class="form-group">
                <label for="telefono">Telefono</label> <br>
        <input type="text" class="form-control" id="telefono" name="telefono" ><br><br>
            </div>
            <button type="submit" class="btn btn-primary">Crear</button>
        </form>
        <%   
            }else{
                IndividualDao Individual = new IndividualDao();
                ClienteIndividual client = new ClienteIndividual(Integer.parseInt(id),nombre,apellido,Integer.parseInt(telefono));
                System.out.println(Integer.parseInt(id));
//System.out.println(client);
                Individual.saveIndividual(client);
                        %>
            <div class="alert alert-success" role="alert">
                Cliente creado exitosamente <a href="TablaIndividual.jsp">Ver Tabla Clientes</a> 
            </div>
            <%
            }
            %>
            
        <form action="Clientes.jsp">
            <button type="submit" class="btn btn-outline-danger">Regresar a Clientes</button>
        </form><br>
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js" integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js" integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous"></script>
    </body>
</html>