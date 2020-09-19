/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package project;

/**
 *
 * @author future
 */
public class Size {

    private int size_id;
    private String size_name;

    public void setSizeID(int newSizeID) {
        size_id = newSizeID;
    }
    

    public void setSizeName(String newSizeName) {
        size_name = newSizeName;
    }

    public int getSizeID() {
        return size_id;
    }

    public String getSizeName() {
        return size_name;
    }

}
