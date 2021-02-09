/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clientesoap;

/**
 *
 * @author WENDY
 */
public class ClienteSoap {

    /**
     * @param args the command line arguments
     */
    public static void main(String[] args) {
      
        System.out.println("CUADRADO:----RESULTADO ES:"+cuadrado(5, 5));
        System.out.println("TRIANGULO:----RESULTADO ES:"+triangulo(4, 3));
    }

    private static double cuadrado(double lado1, double lado2) {
        uddi.Fig_Service service = new uddi.Fig_Service();
        uddi.Fig port = service.getFigPort();
        return port.cuadrado(lado1, lado2);
    }

    private static double triangulo(double lado1, double lado2) {
        uddi.Fig_Service service = new uddi.Fig_Service();
        uddi.Fig port = service.getFigPort();
        return port.triangulo(lado1, lado2);
    }
    
}
