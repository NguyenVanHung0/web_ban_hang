/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Entity;

/**
 *
 * @author NguyenVanHung
 */
public class Product {
    private int id;
    private String name;
    private int quantity;
    private double price_input;
    private double price_output;
    private String image;
    private String description;
    private String title;

    public Product(int id, String name, int quantity, double price_input, double price_output, String image, String description, String title) {
        this.id = id;
        this.name = name;
        this.quantity = quantity;
        this.price_input = price_input;
        this.price_output = price_output;
        this.image = image;
        this.description = description;
        this.title = title;
    }

    public Product(int id, int quantity, double price_output) {
        this.id = id;
        this.quantity = quantity;
        this.price_output = price_output;
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

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getPrice_input() {
        return price_input;
    }

    public void setPrice_input(double price_input) {
        this.price_input = price_input;
    }

    public double getPrice_output() {
        return price_output;
    }

    public void setPrice_output(double price_output) {
        this.price_output = price_output;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }
    
    
}
