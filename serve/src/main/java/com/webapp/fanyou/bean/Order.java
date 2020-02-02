package com.webapp.fanyou.bean;

public class Order {

    private String id;
    private String order_type_id;
    private String order_type_name;
    private String user_id;
    private String user_name;
    private String money;
    private String discount_money;
    private String create_time;
    private String pingjia;

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getOrder_type_id() {
        return order_type_id;
    }

    public void setOrder_type_id(String order_type_id) {
        this.order_type_id = order_type_id;
    }

    public String getOrder_type_name() {
        return order_type_name;
    }

    public void setOrder_type_name(String order_type_name) {
        this.order_type_name = order_type_name;
    }

    public String getUser_id() {
        return user_id;
    }

    public void setUser_id(String user_id) {
        this.user_id = user_id;
    }

    public String getUser_name() {
        return user_name;
    }

    public void setUser_name(String user_name) {
        this.user_name = user_name;
    }

    public String getMoney() {
        return money;
    }

    public void setMoney(String money) {
        this.money = money;
    }

    public String getDiscount_money() {
        return discount_money;
    }

    public void setDiscount_money(String discount_money) {
        this.discount_money = discount_money;
    }

    public String getCreate_time() {
        return create_time;
    }

    public void setCreate_time(String create_time) {
        this.create_time = create_time;
    }

    public String getPingjia() {
        return pingjia;
    }

    public void setPingjia(String pingjia) {
        this.pingjia = pingjia;
    }
}
