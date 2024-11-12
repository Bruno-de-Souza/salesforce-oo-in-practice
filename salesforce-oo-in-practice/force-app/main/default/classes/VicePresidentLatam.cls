/**
 * @author bruno.moreira
 */
public class VicePresidentLatam extends Employee {
 
    public VicePresidentLatam () {

        System.debug('Inicializei Vice Presidente');

    }

    public VicePresidentLatam (String name) {

        super(name);

    }
    
    override
    public Decimal getBonus() {

        return this.salary * 15;

    }

}