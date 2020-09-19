/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author future
 */
public class ReviewRepo {

    private int id;
    private double total;
    private String date;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getTotal() {
        return total;
    }

    public void setTotal(double total) {
        this.total = total;
    }

    public String getDate() {
        return date;
    }

    public void setDate(String date) {
        this.date = date;
    }

    public void add(Connection con) {
        try {
            String q = "Insert reviewRepo values (?,?,?)";
            PreparedStatement stmt = con.prepareStatement(q);
            stmt.setInt(1, id);
            stmt.setDouble(2, total);
            stmt.setString(3, date);
            stmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Sold_items.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
