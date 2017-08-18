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
public class Actividad03 {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
      int [] vect = {5,8,2,9,67,90,53}; 
        Secuencial sec = new Secuencial();
        sec.setV(vect);
        sec.showV();
        System.out.println();
        sec.showF(sec.Search(67));
        binaria bin = new binaria();
        bin.setV(vect);
        int b = bin.Search(53);
        bin.showV();        
        bin.showF(b);
        
}
}
