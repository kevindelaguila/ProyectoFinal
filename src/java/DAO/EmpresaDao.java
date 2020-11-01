
package DAO;

import Modelo.ClienteEmpresa;
import Utils.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class EmpresaDao {
     /**
     * Método para obtener todos los registros de la base de datos como objetos
     * @return List de Empresa
     */
    public List<ClienteEmpresa> getDBEmpresa(){
        List<ClienteEmpresa> clientes = new ArrayList<ClienteEmpresa>();
        try {
            Statement statement = Conexion.conn.createStatement();
            String consulta = " SELECT idempresa, nombreempresa, direccionempresa, contactoempresa"+
                              " FROM empresa";
            ResultSet rs = statement.executeQuery(consulta);
            while(rs.next()){
                clientes.add(new ClienteEmpresa(rs.getInt("idempresa"), rs.getString("nombreempresa"),rs.getString("direccionempresa"),rs.getString("contactoempresa")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return clientes;
    }
    
    public void saveEmpresa(ClienteEmpresa cliente){
        try {
            Statement statement = Conexion.conn.createStatement();
            String dml = "INSERT INTO empresa(idempresa, nombreempresa, direccionempresa, contactoempresa) VALUES("+
                        cliente.getId() + ",'" + cliente.getNombre() + "','" +
                      cliente.getDireccion()+"','" + cliente.getContacto()+ "')";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            System.out.println("ocurrio un error");
            throwables.printStackTrace();
        }
    }
}