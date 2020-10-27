
package login;
import java.sql.*;
        
public class koneksi {
    public Connection conn=null;
    public Statement state;
    public ResultSet resultset;
    
    public Connection sambung (){
        try{
           conn = DriverManager.getConnection("jdbc:mysql://localhost/raraaquatik","root","");
        System.out.println("Koneksi Berhasil");
        } catch (SQLException e) {
            System.err.println(""+e);
        }
        return conn;
    }
    public static void main (String rara []) {
        new koneksi().sambung();
    }
    Connection Sambung(){
        throw new UnsupportedOperationException("Not supported yet.");
    }
}
