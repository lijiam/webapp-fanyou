package com.webapp.fanyou.bean;

public class OrderDetail {
    private String id;
    private String food_id;
    private String food_name;
    private String food_number;
    private String food_price;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getFood_id() {
        return food_id;
    }

    public void setFood_id(String food_id) {
        this.food_id = food_id;
    }

    public String getFood_name() {
        return food_name;
    }

    public void setFood_name(String food_name) {
        this.food_name = food_name;
    }

    public String getFood_number() {
        return food_number;
    }

    public void setFood_number(String food_number) {
        this.food_number = food_number;
    }

    public String getFood_price() {
        return food_price;
    }

    public void setFood_price(String food_price) {
        this.food_price = food_price;
    }
}
