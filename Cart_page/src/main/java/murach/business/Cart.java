package murach.business;

import java.io.Serializable;
import java.text.NumberFormat;
import java.util.ArrayList;

public class Cart implements Serializable {

    private ArrayList<LineItem> items;

    public Cart() {
        items = new ArrayList<LineItem>();
    }

    public ArrayList<LineItem> getItems() {
        return items;
    }

    public boolean CheckExsPro(String code) {
        for (LineItem item : items) {
            if (item.getProduct().getCode().equals(code))
                return true;
        }
        return false;
    }

    public LineItem getItem(String code) {
        for (LineItem item : items) {
            if (item.getProduct().getCode().equals(code))
                return item;
        }
        return null;
    }

    public int getCount() {
        return items.size();
    }

    public double getTotal() {
        double all = 0;
        for (LineItem price : items) {
            all += price.getTotal();
        }
        return all;
    }

    public String getTotalFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance();
        return currency.format(this.getTotal());
    }

    public void addItem(LineItem item) {
        String code = item.getProduct().getCode();
        int quantity = item.getQuantity() + 1;
        for (LineItem cartItem : items) {
            if (cartItem.getProduct().getCode().equals(code)) {
                cartItem.setQuantity(quantity);
                return;
            }
        }
        items.add(item);
    }
    
    public void minusItem(LineItem item) {
        String code = item.getProduct().getCode();
        int quantity = item.getQuantity() - 1;
        for (int i = 0; i < items.size(); i++) {
            LineItem lineItem = items.get(i);
            if (lineItem.getProduct().getCode().equals(code)) {
                if (quantity <= 0)
                    items.remove(i);
                else
                    lineItem.setQuantity(quantity);
                return;
            }
        }
    }

    public void removeItem(LineItem item) {
        String code = item.getProduct().getCode();
        for (int i = 0; i < items.size(); i++) {
            LineItem lineItem = items.get(i);
            if (lineItem.getProduct().getCode().equals(code)) {
                items.remove(i);
                return;
            }
        }
    }

    public void ClearItems()
    {
        items.clear();
    }
}