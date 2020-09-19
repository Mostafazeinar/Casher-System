/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;

import java.io.File;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import net.sf.jasperreports.engine.JRDataSource;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperCompileManager;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperPrintManager;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.data.JRBeanCollectionDataSource;
import net.sf.jasperreports.engine.design.JasperDesign;
import net.sf.jasperreports.engine.util.JRProperties;
import net.sf.jasperreports.engine.xml.JRXmlLoader;

/**
 *
 * @author future
 */
public class Helper {

    public static void print(ArrayList<BillData> data, String id, String total, String descount, String tad) {
        try {
            List<Map<String, ?>> dataSource = new ArrayList();

            for (int i = 0; i < data.size(); i++) {
                Map<String, Object> m = new HashMap();
                m.put("name", data.get(i).getName());
                m.put("q", data.get(i).getQuantity());
                m.put("price", data.get(i).getPrice());
                m.put("size", data.get(i).getSize_name());
                dataSource.add(m);
            }

            HashMap parameter = new HashMap();
            parameter.put("id", "" + id);
            parameter.put("totalPaid", total + " LE");
            parameter.put("discount", descount + " LE");
            parameter.put("priceAfterDiscount", tad + " LE");
            JRDataSource dataSource1 = new JRBeanCollectionDataSource(dataSource);
            File file = new File("Invoice.jrxml");
            String absolutePath = file.getAbsolutePath();
            JasperDesign jd = JRXmlLoader.load(absolutePath);
            JasperReport jp = JasperCompileManager.compileReport(jd);
            JRProperties.setProperty("net.sf.jasperreports.awt.ignore.missing.font", "true");
            JasperPrint printt = JasperFillManager.fillReport(jp, parameter, dataSource1);

            JasperPrintManager.printReport(printt, false);
//            JasperViewer.viewReport(printt, false);
        } catch (JRException var10) {
            var10.printStackTrace();
        }

    }

}
