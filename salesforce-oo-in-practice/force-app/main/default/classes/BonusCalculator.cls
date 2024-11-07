/**
 * @author bruno.moreira
 */
public class BonusCalculator {
    
    Decimal totalBonus;

    public BonusCalculator () {

        this.totalBonus = 0;

    }

    public void calculateBonus (Employee employee) {

        this.totalBonus += employee.getBonus();

    }
    
    public Decimal getTotal () {

        return totalBonus;

    }
}