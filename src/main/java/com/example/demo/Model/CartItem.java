package com.example.demo.Model;

import com.example.demo.Entity.Product;

public class CartItem {
    private final Product product;
    private int quantity;
    private double subTotal;

    public CartItem(Product product) {
        this.product = product;
        this.quantity = 1 ;
        this.subTotal = product.getPrice() ;
    }

    public Product getProduct() {
        return product;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getSubTotal() {
        subTotal = product.getPrice() * this.quantity ;
        return subTotal;

    }
    public double getTotal(double sub){
        double total = 0;
        total+= sub;
        return total;
    }

    public void setSubTotal(double subTotal) {
        this.subTotal = subTotal;
    }
}
