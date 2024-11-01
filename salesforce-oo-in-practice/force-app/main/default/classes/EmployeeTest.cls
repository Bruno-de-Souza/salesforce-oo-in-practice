/**
 * @author bruno.moreira
 */
@isTest
public class EmployeeTest {

    @isTest
    static void shouldCreateAdvisor () {

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

}