/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Bean;

import java.util.Collection;

/**
 *
 * @author thanhphatchau
 */
public class AccountBean {
    private String name;
    private String visanumber;
    private String address;
    private Collection products;
    
    public AccountBean(){
        setName("A name");
    }
    
    public void setName(String name){
        this.name = name;
    }
    
    public String getName(){
        return name;
    }
    
    public void setVisa(String visanumber){
        this.visanumber = visanumber;
    }
    
    public String getVisa(){
        return visanumber;
    }
    
    public void setAddress(String address){
        this.address = address;
    }
    
    public String getAddress(){
        return address;
    }
    
    public Collection getProducts(){
        return products;
    }
    
    public void setProducts(Collection products){
        this.products = products;
    }
}
