/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;

import java.sql.*;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author future
 */
public class Data {

    public static Connection con;
    private static final String DB_NAME = "project";
    private static final String DB_PATH = "jdbc:mysql://localhost:3306/";
//     Method for set Connection to Database and put the 
//     result in con Variable to use it when we need 
//     to make a connection to database

    public static Connection setConnection() {
        try {
            Class.forName("com.mysql.jdbc.Driver").newInstance();
            con = DriverManager.getConnection(DB_PATH + DB_NAME, "root", "");
        } catch (SQLException var1) {
            System.out.println(var1.getMessage());
        } catch (ClassNotFoundException | InstantiationException | IllegalAccessException var2) {
            Logger.getLogger(Data.class.getName()).log(Level.SEVERE, (String) null, var2);
        }

        return con;
    }

    public static boolean deleteById(Connection con, String table_name, String coulmn_name, String id) {

        String strDelete = "delete from " + table_name + " where "
                + coulmn_name + " = " + id;
        boolean isDeleted = excuteQuery(con, strDelete);
        return isDeleted;

    }

    // Method to do some fast query in database
    public static boolean excuteQuery(Connection con, String sqlStatement) {
        try {
            java.sql.Statement statement = con.createStatement();
            statement.executeUpdate(sqlStatement);
            return true;
        } catch (SQLException var2) {
            var2.printStackTrace();
            return false;
        }
    }

    public static String AutoIncrementCoulmn(Connection con, String tableName, String coulmnName) {
        try {
            setConnection();
            Statement statement = con.createStatement();
            String strDBcode = "select max(" + coulmnName + ") +1 AS auto from " + tableName;
            statement.executeQuery(strDBcode);

            String num;
            for (num = ""; statement.getResultSet().next(); num = statement.getResultSet().getString("auto")) {
            }

            return num != null && !"".equals(num) ? num : "1";
        } catch (SQLException var5) {
            System.out.println(var5.getMessage());
            return null;
        }
    }
    /*
     method to get any coulmn in any table in database
     @param String tableName
     @param String coulmnName
     @param String condition
     @param Connection con
    
     and return with array of String contain coulmn data
     */

    public static String[] getCoulmnData(Connection con, String tableName, String coulmnName, String condition) {
        try {
            Statement stmt = con.createStatement();
            String strSelect = "select " + coulmnName + " from "
                    + tableName + " " + condition;
            System.out.println(strSelect);
            ResultSet rs = stmt.executeQuery(strSelect);
            rs.last();
            int rowCount = rs.getRow();
            rs.beforeFirst();
            String[] values = new String[rowCount];

            for (int i = 0; rs.next(); ++i) {
                values[i] = rs.getString(1);
            }
            return values;
        } catch (SQLException var10) {
            System.out.println(var10.getMessage());
            return null;
        }

    }

    public static ArrayList<Sold_items> getSold_items(Connection con, String sql) {

        try {
            ArrayList<Sold_items> data = new ArrayList<>();

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {

                Sold_items item = new Sold_items();
                item.setId(rs.getInt("id"));
                item.setInvoice_id(rs.getInt("invoice_id"));
                item.setItem_id(rs.getInt("item_id"));
                item.setQuantity(rs.getInt("quantity"));
                item.setSize_id(rs.getInt("size_id"));

                data.add(item);
            }

            return data;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;

        }

    }

    public static ArrayList<Invoice> getInvoice(Connection con, String sql) {

        try {
            ArrayList<Invoice> data = new ArrayList<>();

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {

                Invoice item = new Invoice();
                item.setId(rs.getInt("id"));
                item.setPbd(rs.getDouble("PriceBeforeDiscount"));
                item.setDiscount(rs.getDouble("Discount"));
                item.setPad(rs.getDouble("PriceAfterDiscount"));

                data.add(item);
            }

            return data;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;

        }

    }

    public static ArrayList<ReviewRepo> getReviewRepo(Connection con, String sql) {

        try {
            ArrayList<ReviewRepo> data = new ArrayList<>();

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {

                ReviewRepo item = new ReviewRepo();
                item.setId(rs.getInt("id"));
                item.setTotal(rs.getDouble("total"));
                item.setDate(rs.getString("date"));

                data.add(item);
            }

            return data;
        } catch (SQLException ex) {
            ex.printStackTrace();
            return null;

        }

    }
}
