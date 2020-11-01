/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.ClienteIndividual;
import Utils.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class IndividualDao {

    public List<ClienteIndividual> getDBIndividual(){
        List<ClienteIndividual> clientes = new ArrayList<ClienteIndividual>();
        try {
            Statement statement = Conexion.conn.createStatement();
            String consulta = " SELECT id, nombre, apellido, telefono"+
                              " FROM individual";
            ResultSet rs = statement.executeQuery(consulta);
            while(rs.next()){
                clientes.add(new ClienteIndividual(rs.getInt("id"), rs.getString("nombre"),rs.getString("apellido"),rs.getInt("telefono")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return clientes;
    }
 
    public void saveIndividual(ClienteIndividual cliente){
        try {
            Statement statement = Conexion.conn.createStatement();
            String dml = "INSERT INTO individual(id, nombre, apellido, telefono) VALUES("+
                        cliente.getId() + ",'" + cliente.getNombre() + "','" +
                      cliente.getApellido()+"','" + cliente.getTelefono() + "')";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            System.out.println("ocurrio un error");
            throwables.printStackTrace();
        }
    }
//    
//    public void changeIndividual(ClienteIndividual cliente){
//        try {
//            Statement statement = Conexion.conn.createStatement();
//            String dml = "UPDATE individual(id, nombre, apellido, telefono) SET id="+cliente.getId()",nombre='"+cliente.getNombre()+
//                    "',apellido='"+cliente.getApellido()+"',telefono="+cliente.getTelefono()+"WHERE id="+cliente.getId();
////                    + ",WHERE nombre='" + cliente.getNombre() + "',WHERE apellido='" +
////                      cliente.getApellido()+"',WHERE telefono='" + cliente.getTelefono() + "')";
//            System.out.println("dml = " + dml);
//            statement.executeUpdate(dml);
//        } catch (SQLException throwables) {
//            System.out.println("ocurrio un error");
//            throwables.printStackTrace();
//        }
//    }
    
    
}