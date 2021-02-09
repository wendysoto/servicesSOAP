
package uddi;

import javax.xml.bind.annotation.XmlAccessType;
import javax.xml.bind.annotation.XmlAccessorType;
import javax.xml.bind.annotation.XmlType;


/**
 * <p>Java class for cuadrado complex type.
 * 
 * <p>The following schema fragment specifies the expected content contained within this class.
 * 
 * <pre>
 * &lt;complexType name="cuadrado"&gt;
 *   &lt;complexContent&gt;
 *     &lt;restriction base="{http://www.w3.org/2001/XMLSchema}anyType"&gt;
 *       &lt;sequence&gt;
 *         &lt;element name="lado1" type="{http://www.w3.org/2001/XMLSchema}double"/&gt;
 *         &lt;element name="lado2" type="{http://www.w3.org/2001/XMLSchema}double"/&gt;
 *       &lt;/sequence&gt;
 *     &lt;/restriction&gt;
 *   &lt;/complexContent&gt;
 * &lt;/complexType&gt;
 * </pre>
 * 
 * 
 */
@XmlAccessorType(XmlAccessType.FIELD)
@XmlType(name = "cuadrado", propOrder = {
    "lado1",
    "lado2"
})
public class Cuadrado {

    protected double lado1;
    protected double lado2;

    /**
     * Gets the value of the lado1 property.
     * 
     */
    public double getLado1() {
        return lado1;
    }

    /**
     * Sets the value of the lado1 property.
     * 
     */
    public void setLado1(double value) {
        this.lado1 = value;
    }

    /**
     * Gets the value of the lado2 property.
     * 
     */
    public double getLado2() {
        return lado2;
    }

    /**
     * Sets the value of the lado2 property.
     * 
     */
    public void setLado2(double value) {
        this.lado2 = value;
    }

}
