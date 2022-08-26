package com.manageuser.model;

import javax.persistence.*;
import java.io.Serializable;
import java.text.NumberFormat;
import java.util.Locale;

@Entity
@Table(name="Product")
@NamedQuery(name = "Product.findAll", query = "SELECT u FROM Product u")
public class Product extends Abstract {

    @Id
    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Column(name="id")
    private int id;
    @Column(name = "code", unique = true)
    private String code;
    private String name;
    private String shortdescrip;
    private String description;
    private double price;
    private double sale;
    private String picture;
    @ManyToOne
    @JoinColumn(name = "categoryID")
    private Category category;
    private int quantity;

    public Product() {
        super();
        code = "";
        name = "";
        shortdescrip = "";
        description = "";
        price = 0;
        sale = 0;
        picture = "";
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getCode() {
        return code;
    }

    public void setCode(String code) {
        this.code = code;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getShortdescrip() {
        return shortdescrip;
    }

    public void setShortdescrip(String shortdescrip) {
        this.shortdescrip = shortdescrip;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public double getSale() {
        return sale;
    }

    public void setSale(double sale) {
        this.sale = sale;
    }

    public String getPicture() {
        return picture;
    }

    public void setPicture(String picture) {
        this.picture = picture;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public String getPriceCurrencyFormat() {
        NumberFormat currency = NumberFormat.getCurrencyInstance(Locale.US);
        return currency.format(price);
    }
}

