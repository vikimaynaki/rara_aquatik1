
package laporan;
import java.sql.Connection;
import java.sql.DriverManager;

public class coneksi {
   public Connection openkoneksi (){
       Connection conn=null;
       try{
           Class.forName("com.mysql.jdbc.Driver");
           conn=(Connection)DriverManager.getConnection("jdbc:mysql://localhost/raraaquatik","root","");
           System.out.println("Berhasil");
           return conn;
       }catch (Exception e){
           System.out.println("gagal");
           return null;
       }
   }
   public static void main(String [] raraaquatik){
       new coneksi().openkoneksi();
   }
   }
      
