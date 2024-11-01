/**
 * @author bruno.moreira
 */
@isTest
public class EmployeeTest {

    @isTest
    static void shouldCreateEmployee () {

        final Decimal DEFAULT_ADVISOR_SALARY = 5000;

        Advisor advisor = new Advisor( new List<Account> () ); 

        advisor.name =  'Advisor';
        advisor.documentId = '1001001001';
        advisor.code = '1000';
        advisor.salary = DEFAULT_ADVISOR_SALARY;
        List<Account> accounts = new List<Account>();
        System.debug(advisor);

        Assert.isTrue(advisor.accounts.isEmpty());
        Assert.areEqual(DEFAULT_ADVISOR_SALARY, advisor.salary, 'Advisor Salary');

        Assert.areEqual(8750, advisor.getBonus());

        final Decimal DEFAULT_MANAGER_SALARY = 10000;

        Manager manager = new Manager( new List<Advisor> {new Advisor()} );
        
        manager.name = 'Manager';
        manager.documentId = '1001001001';
        manager.code = '1000';
        manager.salary = DEFAULT_MANAGER_SALARY;
        List<Advisor> advisors = new List<Advisor>();
        System.debug(manager);

        Assert.isFalse(manager.advisors.isEmpty());
        Assert.areEqual(DEFAULT_MANAGER_SALARY, manager.salary, 'Manager Salary');

        Assert.areEqual(17500, manager.getBonus());

    }

    @isTest
    public static void shouldCreateAnalyst () {

        Employee employee = new Employee();
        
        employee.name = 'Employee';
        employee.salary = 5000;
        System.debug('Employee: ' + employee);
        System.debug('Employee Salary with bonus: ' + employee.getBonus());

        Assert.areEqual(8750, employee.getBonus());

        Analyst analyst = new Analyst();

        analyst.name = 'Analyst';
        analyst.salary = 5000;
        System.debug('Analyst: ' + analyst);
        System.debug('Analsyst Salary with bonus: ' + analyst.getBonus());

        Assert.areEqual(15750, analyst.getBonus());


    }

}