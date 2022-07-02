/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

import java.util.List;

/**
 *
 * @author NguyenVanHung
 */
public class Order {
    private int id_order;
    private int id_user;
    private List<Product> listPro;
    private int status;
    private double totalMoney;
    private String phone;
    private String address;

    public Order(int id_order, int id_user, List<Product> listPro, int status, double totalMoney, String phone, String address) {
        this.id_order = id_order;
        this.id_user = id_user;
        this.listPro = listPro;
        this.status = status;
        this.totalMoney = totalMoney;
        this.phone = phone;
        this.address = address;
    }

  
    public Order(int id_user, List<Product> listPro, int status) {
        this.id_user = id_user;
        this.listPro = listPro;
        this.status = status;
    }

    public int getId_order() {
        return id_order;
    }

    public void setId_order(int id_order) {
        this.id_order = id_order;
    }

    public int getId_user() {
        return id_user;
    }

    public void setId_user(int id_user) {
        this.id_user = id_user;
    }

    public List<Product> getListPro() {
        return listPro;
    }

    public void setListPro(List<Product> listPro) {
        this.listPro = listPro;
    }

    public int getStatus() {
        return status;
    }

    public void setStatus(int status) {
        this.status = status;
    }

    public double getTotalMoney() {
        return totalMoney;
    }

    public void setTotalMoney(double totalMoney) {
        this.totalMoney = totalMoney;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }
    
    
    
}
