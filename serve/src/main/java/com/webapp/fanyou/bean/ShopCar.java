package com.webapp.fanyou.bean;

public class ShopCar {

    private String userid;
    private String foodid;
    private String foodname;
    private int foodnum;
    private int foodprice;
    private String foodimg;

    public String getFoodimg() {
        return foodimg;
    }

    public void setFoodimg(String foodimg) {
        this.foodimg = foodimg;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getFoodid() {
        return foodid;
    }

    public void setFoodid(String foodid) {
        this.foodid = foodid;
    }

    public String getFoodname() {
        return foodname;
    }

    public void setFoodname(String foodname) {
        this.foodname = foodname;
    }

    public int getFoodnum() {
        return foodnum;
    }

    public void setFoodnum(int foodnum) {
        this.foodnum = foodnum;
    }

    public int getFoodprice() {
        return foodprice;
    }

    public void setFoodprice(int foodprice) {
        this.foodprice = foodprice;
    }
}
