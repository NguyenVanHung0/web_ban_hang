/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package com.dta;

import Entity.Account;
import Entity.Category;
import Entity.Product;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author NguyenVanHung
 */
public class DAO {
    ConnectionDta connectionDta = new ConnectionDta();
    
    public Account getAccountByNameAndPass(String name, String pass){
        try {
            Connection conn = connectionDta.getJDBCConnection();
            String query = "select * from account where user_name = ? and password = ?";
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            preparedStatement.setString(1, name);
            preparedStatement.setString(2, pass);
            ResultSet re = preparedStatement.executeQuery();
            while(re.next()){
                return new Account(re.getInt(1), re.getString(2), re.getString(3), re.getString(4));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public Account getAccountById(int id){
        try {
            Connection conn = connectionDta.getJDBCConnection();
            String query = "select * from account where id_user = ?";
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            preparedStatement.setInt(1, id);
            ResultSet re = preparedStatement.executeQuery();
            while(re.next()){
                return new Account(re.getInt(1), re.getString(2), re.getString(3), re.getString(4));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
    public boolean checkAccount(String sdt){
        boolean a = false;
        try{
            Connection conn = connectionDta.getJDBCConnection();
            String query = "select * from account where sdt = ?";
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            preparedStatement.setString(1, sdt);
            ResultSet re = preparedStatement.executeQuery();
            if(re.next()){
                a = true;
            }
        } catch(SQLException ex){
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return a;
    }
    
    public void insertAccount(String name, String pass, String sdt){
        try {
            Connection conn = connectionDta.getJDBCConnection();
            String query1 = "insert into account (user_name, password, sdt) values(?, ?, ?)";
            PreparedStatement preparedStatement1 = conn.prepareStatement(query1);
            preparedStatement1.setString(1, name);
            preparedStatement1.setString(2, pass);
            preparedStatement1.setString(3, sdt);
            preparedStatement1.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    public ArrayList<Category> getListCategoryCommon(){
        ArrayList<Category> list = new ArrayList<>();
        try{
            Connection conn = connectionDta.getJDBCConnection();
            String query = "select * from theloai where gender = 3";
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            ResultSet re = preparedStatement.executeQuery();
            while(re.next()){
                list.add(new Category(re.getInt(1), re.getString(2), re.getInt(3)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public ArrayList<Category> getListCategoryMale(){
        ArrayList<Category> list = new ArrayList<>();
        try{
            Connection conn = connectionDta.getJDBCConnection();
            String query = "select * from theloai where gender = 1";
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            ResultSet re = preparedStatement.executeQuery();
            while(re.next()){
                list.add(new Category(re.getInt(1), re.getString(2), re.getInt(3)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public ArrayList<Category> getListCategoryFemale(){
        ArrayList<Category> list = new ArrayList<>();
        try{
            Connection conn = connectionDta.getJDBCConnection();
            String query = "select * from theloai where gender = 2";
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            ResultSet re = preparedStatement.executeQuery();
            while(re.next()){
                list.add(new Category(re.getInt(1), re.getString(2), re.getInt(3)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public ArrayList<Product> getProduct(){
        ArrayList<Product> list = new ArrayList<>();
        try{
            Connection conn = connectionDta.getJDBCConnection();
            String query = "SELECT * FROM product";
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            ResultSet re = preparedStatement.executeQuery();
            while(re.next()){
                list.add(new Product(re.getInt(1), re.getString(2), re.getInt(3), re.getDouble(4), re.getDouble(5), re.getString(6), re.getString(7), re.getString(8)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
    public Product getProductById(String id){
        try{
            Connection conn = connectionDta.getJDBCConnection();
            String query = "SELECT * FROM product where id_product = ?";
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            preparedStatement.setString(1, id);
            ResultSet re = preparedStatement.executeQuery();
            while(re.next()){
                return new Product(re.getInt(1), re.getString(2), re.getInt(3), re.getDouble(4), re.getDouble(5), re.getString(6), re.getString(7), re.getString(8));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
    
     public ArrayList<Product> getProductByName(String name){
        ArrayList<Product> list = new ArrayList<Product>();
        try{
            Connection conn = connectionDta.getJDBCConnection();
            String query = "select * from product where name like ?";
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            preparedStatement.setString(1, "%"+name+"%");
            ResultSet re = preparedStatement.executeQuery();
            while(re.next()){
                list.add(new Product(re.getInt(1), re.getString(2), re.getInt(3), re.getDouble(4), re.getDouble(5), re.getString(6), re.getString(7), re.getString(8)));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return list;
    }
    
     public Category getCategoryById(String id){
        try{
            Connection conn = connectionDta.getJDBCConnection();
            String query = "select * from theloai where id_theloai = ?";
            PreparedStatement preparedStatement = conn.prepareStatement(query);
            preparedStatement.setString(1, id);
            ResultSet re = preparedStatement.executeQuery();
            while(re.next()){
                return new Category(re.getInt(1), re.getString(2), re.getInt(3));
            }
        } catch (SQLException ex) {
            Logger.getLogger(DAO.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}
