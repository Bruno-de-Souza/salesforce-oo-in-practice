/**
 * @author bruno.moreira
 */
@isTest
public class BonusCalculatorTest {
    
    @isTest
    public static void shouldCalculateAllEmployeeBonus() {

        BonusCalculator calculator = new BonusCalculator();

        Advisor advisor = new Advisor();
        advisor.salary = 1000;

        Analyst analyst = new Analyst();
        analyst.salary = 1000;

        Manager manager = new Manager();
        manager.salary = 1000;

        Director director = new Director();
        director.salary = 10000;

        VicePresidentLatam vicePresidentLatam = new VicePresidentLatam();
        vicePresidentLatam.salary = 1000;

        calculator.calculateBonus(advisor);
        calculator.calculateBonus(analyst);
        calculator.calculateBonus(manager);
        calculator.calculateBonus(director);
        calculator.calculateBonus(vicePresidentLatam);

        Assert.areEqual(83750.00, calculator.getTotal());

    }

}