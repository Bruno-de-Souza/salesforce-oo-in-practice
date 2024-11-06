/**
 * @author bruno.moreira
 */
public class Director extends Employee {
    
    public Director() {

        System.debug('Inicializei o Director');

    }

    public Director(String name) {

        super(name);

    }

    override
    public Decimal getBonus() {

        return this.salary * 5;

    }

}