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
public class Item {

    private int item_id;
    private String name;
    private int price_id;

    public Item() {

    }

    public void setItemID(int newItemID) {
        item_id = newItemID;
    }
   

    public void setName(String newName) {
        name = newName;
    }
   

    public void setPriceID(int newPriceID) {
        price_id = newPriceID;
    }

    public int getItemID() {
        return item_id;
    }

    public String getName() {
        return name;
    }

    public long getPriceID() {
        return price_id;
    }

}
