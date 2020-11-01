/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.ClienteIndividual;
import Modelo.Orden;
import Utils.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class OrdenDao {
    

    public List<Orden> getDBOrden(){
        List<Orden> orden = new ArrayList<Orden>();
        try {
            Statement statement = Conexion.conn.createStatement();
            String consulta = " SELECT idcliente,idproducto,cantidad,precio"+
                              " FROM orden";
            ResultSet rs = statement.executeQuery(consulta);
            while(rs.next()){
                orden.add(new Orden(rs.getInt("idcliente"), rs.getInt("idproducto"),rs.getInt("cantidad"),rs.getInt("precio")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return orden;
    }
 
    public void saveOrden(Orden orden){
        try {
            Statement statement = Conexion.conn.createStatement();
            String dml = "INSERT INTO orden(idcliente, idproducto, cantidad, precio) VALUES("+
                        orden.getIdcliente() + "," + orden.getIdproducto() + "," +
                      orden.getCantidad()+"," + orden.getTotal()+ ")";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            System.out.println("ocurrio un error");
            throwables.printStackTrace();
        }
    }
}
