/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author NguyenVanHung
 */
public class Account {
    private int id;
    private String name;
    private String password;
    private String std;

    public Account(int id, String name, String password, String std) {
        this.id = id;
        this.name = name;
        this.password = password;
        this.std = std;
    }

    

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getStd() {
        return std;
    }

    public void setStd(String std) {
        this.std = std;
    }
    
}
