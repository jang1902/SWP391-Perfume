/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package model;


import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author ASUS
 */
public class Cart {

    List<Item> items;

    public Cart() {
        items = new ArrayList<>();
    }

    public List<Item> getItems() {
        return items;
    }

    public int getQuantity(int pid, int sid) {
        return getItem(pid, sid).getQuantity();
    }

    private Item getItem(int pid, int sid) {
        for (Item i : items) {
            if (i.getProduct().getId() == pid && i.getSize().getId() == sid) {
                return i;
            }
        }
        return null;
    }

    public void addItem(Item t) {
        Item m = getItem(t.getProduct().getId(), t.getSize().getId());
        if (m != null) {
            m.setQuantity(m.getQuantity() + t.getQuantity());
        } else {
            items.add(t);
        }
    }

    public void removeItem(int pid, int sid) {
        Item i = getItem(pid, sid);
        if (i != null) {
            items.remove(i);
        }
    }

    public double getTotalMoney() {
        double t = 0;
        for (Item i : items) {
            t += (i.getQuantity() * i.getPrice());
        }
        return t;
    }

    
}
