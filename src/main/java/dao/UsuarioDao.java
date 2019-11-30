
package dao;

import conexion.Conexion;
import java.sql.PreparedStatement;
import java.sql.ResultSet;


public class UsuarioDao {
    Conexion conn;
    PreparedStatement ps;
    ResultSet rs;
    String sql = "";

    public UsuarioDao(Conexion conn) {
        this.conn = conn;
    }
    
    public boolean login(String usuario, String clave){
    
        sql = "select * from usuario where usuario =? and clave = ?";
        
        try {
            ps = conn.conectar().prepareStatement(sql);
            ps.setString(1, usuario);
            ps.setString(2, clave);
            
            rs = ps.executeQuery();
            while(rs.next()){
                return true;
            }
            return false;
        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }
    
}
