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
public class binaria extends fetch implements Ordenamiento {
     @Override
    public int busqueda(int b) 
    {
        
        int inicio, centro, fin;
        int valorCentro;
        this.vector=ord(this.vector);
        inicio = 0; fin = vector.length-1;
        centro = (inicio + fin)/2;
        
        while(inicio < fin)
        {
            valorCentro=vector[centro]; 
            if(valorCentro == b) 
            {
                return centro;
            }
            else
            {
                if(b < valorCentro)
                {
                    fin = centro;
                    centro = (inicio + fin)/2;
                }
                else
                {
                    inicio = centro;
                    centro = (inicio + fin)/2;
                }
            }
        }
        return -1;
    }

    @Override
    public int[] ord(int[] vector) 
    {
        int auxiliar; 
        for (int i = 0; i < vector.length - 1; i++) 
        { 
            int m = i; 
            for (int j = i + 1; j < vector.length; j++) 
            { 
              if (vector[j] < vector [m]) 
              { 
                  m = j;
              }
            }
            
            auxiliar = vector[i];
            vector[i]=vector[m];
            vector[m]=auxiliar;
        }
        return vector;
    }
    
}
