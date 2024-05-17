/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Bean;

/**
 *
 * @author thanhphatchau
 */
public class Counter {
    int count=0;
    public Counter(){
    }
    
    public int getCount(){
        count++;
        return this.count;
    }
    
    public void setCount(int counter){
        this.count = counter;
    }
    
}
