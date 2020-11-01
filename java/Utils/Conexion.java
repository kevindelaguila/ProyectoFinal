
package Utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.swing.JOptionPane;

public class Conexion {
    

    public static final String DRIVER_DB = "org.postgresql.Driver";
    public static final String URL_DB = "jdbc:postgresql://localhost:5432/postgres";
    public static final String USER_DB = "postgres";
    public static final String PASSWORD_DB = "password";
    public static Connection conn;
    static{
        try{
            Class.forName(DRIVER_DB);
            conn = DriverManager.getConnection(URL_DB, USER_DB, PASSWORD_DB);
        } catch (ClassNotFoundException | SQLException e) {
        }
    }
};