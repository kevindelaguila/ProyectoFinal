/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.Producto;
import Utils.Conexion;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author famil
 */
public class ProductoDao {
    public List<Producto> getDBProducto(){
        List<Producto> productos = new ArrayList<Producto>();
        try {
            Statement statement = Conexion.conn.createStatement();
            String consulta = " SELECT idproductos, nombreproductos, descripcionproductos, precioproductos"+
                              " FROM productos";
            ResultSet rs = statement.executeQuery(consulta);
            while(rs.next()){
                productos.add(new Producto(rs.getInt("idproductos"), rs.getString("nombreproductos"),rs.getString("descripcionproductos"),rs.getInt("precioproductos")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return productos;
    }
    
    public void saveProducto(Producto producto){
        try {
            Statement statement = Conexion.conn.createStatement();
            String dml = "INSERT INTO productos(idproductos, nombreproductos, descripcionproductos, precioproductos) VALUES("+
                        producto.getIdproducto()+ ",'" + producto.getNombreproductos()+ "','" +
                      producto.getDescripcionproductos()+"','" + producto.getPrecioproductos()+ "')";
            System.out.println("dml = " + dml);
            statement.executeUpdate(dml);
        } catch (SQLException throwables) {
            System.out.println("ocurrio un error");
            throwables.printStackTrace();
        }
    }
}
