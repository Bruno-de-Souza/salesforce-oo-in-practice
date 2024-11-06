/**
 * @author bruno.moreira
 */
public class Manager extends Employee {
    
    public List<Advisor> advisors;

    public Manager () {

        System.debug('Inicializei ' + 'Manager');
        this.advisors = new List<Advisor>();
    }

    public Manager (String name) {

        super(name);

    }

    public Manager (List<Advisor> advisors) {

        this();
        this.advisors = advisors;

    }

    override
    public Decimal getBonus() {

        return this.salary * 3;

    }

}