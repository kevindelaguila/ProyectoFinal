/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import Modelo.Usuario;
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
public class UsuarioDao {
    
        public List<Usuario> getDBUsuario(){
        List<Usuario> user = new ArrayList<Usuario>();
        try {
            Statement statement = Conexion.conn.createStatement();
            String consulta = " SELECT usuario, clave"+
                              " FROM usuario";
            ResultSet rs = statement.executeQuery(consulta);
            while(rs.next()){
                user.add(new Usuario(rs.getString("usuario"),rs.getString("clave")));
            }
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
        return user;
    }
    
    public boolean checkLogin(String usuario, String password)
    {
        try{
        Statement statement = Conexion.conn.createStatement();
            String consulta = " SELECT usuario,clave"+
                              " FROM usuario WHERE usuario = '"+usuario+"' AND clave = '"+password+"'";
            ResultSet rs = statement.executeQuery(consulta);
            if(rs.next()){
                return true;
            }
            else
            {
                return false;
            }
        }catch(SQLException throwables)
        {
            return false;
        }
    }
}
