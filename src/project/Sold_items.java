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
public class Sold_items {

    private int id;
    private int item_id;
    private int size_id;
    private int quantity;
    private int invoice_id;

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public int getItem_id() {
        return item_id;
    }

    public void setItem_id(int item_id) {
        this.item_id = item_id;
    }

    public int getSize_id() {
        return size_id;
    }

    public void setSize_id(int size_id) {
        this.size_id = size_id;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public int getInvoice_id() {
        return invoice_id;
    }

    public void setInvoice_id(int invoice_id) {
        this.invoice_id = invoice_id;
    }

    public void add(Connection con) {
        try {
            String q = "Insert sold_items values (?,?,?,?,?)";
            PreparedStatement stmt = con.prepareStatement(q);
            stmt.setInt(1, id);
            stmt.setInt(2, item_id);
            stmt.setInt(3, size_id);
            stmt.setInt(4, quantity);
            stmt.setInt(5, invoice_id);
            stmt.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(Sold_items.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
