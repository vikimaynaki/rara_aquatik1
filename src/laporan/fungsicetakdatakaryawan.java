
package laporan;
import java.io.File;
import java.sql.Connection;

import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.view.JasperViewer;


public class fungsicetakdatakaryawan {
     public fungsicetakdatakaryawan (String reportdatakaryawan){
        try{
            coneksi objconneksi=new coneksi();
            Connection conn=objconneksi.openkoneksi();
            File report_File=new File(reportdatakaryawan);
            JasperReport jasperReport=(JasperReport)JRLoader.loadObject(report_File.getPath());
            JasperPrint jasperPrint= JasperFillManager.fillReport(jasperReport, null,conn);
            JasperViewer.viewReport(jasperPrint,false);
        }
          catch (Exception e){
             System.out.println(e.getMessage());
    }
    }
}
