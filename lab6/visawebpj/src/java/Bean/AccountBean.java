/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Bean;

/**
 *
 * @author thanhphatchau
 */
public class AccountBean {
    private String name;
    private String visanumber;
    private String address;
    
    public AccountBean(){
        setName("a name");
        setVisa("0000 0000 0000 0000");
        setAddress("an address");
        
        
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
}
