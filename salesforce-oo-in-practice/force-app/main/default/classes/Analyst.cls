/**
 * @author bruno.moreira
 */
public class Analyst extends Employee{
    
    public Analyst () {

        System.debug('Inicializei Analyst');

    }

    public Analyst (String name) {

        super(name);

    }

    override
    public Decimal getBonus () {

        return (this.salary * 1.75) + 7000;

    }

}