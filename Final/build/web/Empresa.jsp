<%-- 
    Document   : Individual
    Created on : 24/10/2020, 22:41:47
    Author     : famil
--%>

<%@page import="Modelo.ClienteEmpresa"%>
<%@page import="DAO.EmpresaDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Individual</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    </head>
    <body>
        <h1>Cliente Empresa</h1>
        <%
            String id = request.getParameter("id");
            String nombre = request.getParameter("nombre");
            String direccion = request.getParameter("direccion");
            String contacto = request.getParameter("contacto");
            if(id==null && nombre==null && direccion==null && contacto==null){
            %>
        <form action="Empresa.jsp" method="POST">
            <div class="form-group">
                <label for="id">Id</label> <br>  
        <input type="text" class="form-control" id="id" name="id"><br>
            </div>
            <div class="form-group">
                <label for="nombre">Nombre</label> <br>
        <input type="text" class="form-control" id="nombre" name="nombre" ><br>
            </div>            
            <div class="form-group">
                <label for="direccion">Direccion</label> <br>
        <input type="text" class="form-control" id="direccion" name="direccion" ><br>     
            </div>
            <div class="form-group">
                <label for="contacto">Telefono</label> <br>
        <input type="text" class="form-control" id="contacto" name="contacto" ><br><br>
            </div>
            <button type="submit" class="btn btn-primary">Crear</button>
        </form>
        <%   
            }else{
                EmpresaDao empresa = new EmpresaDao();
                ClienteEmpresa client = new ClienteEmpresa(Integer.parseInt(id),nombre,direccion,contacto);
                 System.out.println(Integer.parseInt(id));
//System.out.println(client);
empresa.saveEmpresa(client);
                        %>
            <div class="alert alert-success" role="alert">
                Cliente creado exitosamente <a href="TablaEmpresas.jsp">Ver</a> 
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