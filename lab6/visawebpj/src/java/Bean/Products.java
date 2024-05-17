/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Bean;

/**
 *
 * @author thanhphatchau
 */
public class Products {
    private String pname;
    private String owner;
    private String country;
    private int price;
    
    public void setName(String name){
        this.pname=name;
    }
    public String getName(){
        return pname;
    }
    public void setOwner(String owner){
        this.owner=owner;
    }
    public String getOwner(){
        return owner;
    }
    public void setCountry(String country){
        this.country=country;
    }
    public String getCountry(){
        return country;
    }
    public void setPrice(int price){
        this.price = price;
    }
    public int getPrice(){
        return price;
    }
}
