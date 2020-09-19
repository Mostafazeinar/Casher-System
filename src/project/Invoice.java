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
public class Invoice {

    private int id;
    private double pbd;
    private double discount;
    private double pad;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public double getPbd() {
        return pbd;
    }

    public void setPbd(double pbd) {
        this.pbd = pbd;
    }

    public double getDiscount() {
        return discount;
    }

    public void setDiscount(double discount) {
        this.discount = discount;
    }

    public double getPad() {
        return pad;
    }

    public void setPad(double pad) {
        this.pad = pad;
    }

    public void add(Connection con) {
        try {
            String q = "Insert invoice values (?,?,?,?)";
            PreparedStatement stmt = con.prepareStatement(q);
            stmt.setInt(1, id);
            stmt.setDouble(2, pbd);
            stmt.setDouble(3, discount);
            stmt.setDouble(4, pad);
            stmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Sold_items.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
