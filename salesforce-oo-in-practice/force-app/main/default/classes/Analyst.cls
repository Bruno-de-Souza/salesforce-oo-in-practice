/**
 * @author bruno.moreira
 */
public class Analyst extends Employee{
    
    public Analyst () {

        System.debug('Inicializei Analyst');

    }

    public Analyst (String name) {

        super(name);
        System.debug('Construtor Analyst com parâmetro de String da classe mãe');

    }

    override
    public Decimal getBonus () {

        return super.getBonus() + 7000;

    }

}