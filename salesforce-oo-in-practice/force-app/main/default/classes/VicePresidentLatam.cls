/**
 * @author bruno.moreira
 */
public class VicePresidentLatam extends Employee {
    
    override
    public Decimal getBonus() {

        return this.salary * 15;

    }

}