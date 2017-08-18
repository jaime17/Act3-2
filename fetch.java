/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package actividad03;

/**
 *
 * @author jaime
 */
public abstract class fetch {
    int[] vector;
    
    
    public void setV(int [] vector) 
    {
        this.vector = vector; 
    }
    public int[] getV() 
    {
        return this.vector;
    }
    public void showV() 
    {
        for(int i=0;i<this.vector.length;i++)
        {
            System.out.print(this.vector[i]+", ");
        }
    }
    public void showF (int num) 
    {
        if(num!=-1)
        {
            System.out.println("El valor se encuentra en la posición "+num);       
        }
        else
        {
            System.out.println("El valor no se encuentra en el vector");
        }
    }
    
    public abstract int busqueda (int b); 
}

