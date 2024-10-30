/**
 * @author bruno.moreira
 */
@isTest
public class EmployeeTest {
    
    @isTest
    static void shouldCreateEmployee () {

        Employee employee = new Employee();

        employee.name = 'Employee';
        employee.documentId = '1001001001';
        employee.code = '1000';
        employee.salary = 5000;
        System.debug(employee);

        Assert.isNotNull(employee);

    }

    @isTest
    static void shouldCreateAdvisor () {

        final Decimal DEFAULT_ADVISOR_SALARY = 5000;

        Advisor advisor = new Advisor(); 

        advisor.name =  'Advisor';
        advisor.documentId = '1001001001';
        advisor.code = '1000';
        advisor.salary = DEFAULT_ADVISOR_SALARY;
        List<Account> accounts = new List<Account>();
        System.debug(advisor);

        Assert.isTrue(accounts.isEmpty());

    }

    @isTest
    static void shouldCreateManager () {

        final Decimal DEFAULT_MANAGER_SALARY = 12000;

        Manager manager = new Manager();
        
        manager.name = 'Maneger';
        manager.documentId = '1001001001';
        manager.code = '1000';
        manager.salary = DEFAULT_MANAGER_SALARY;
        List<Advisor> advisors = new List<Advisor>();
        System.debug(manager);

        Assert.isTrue(advisors.isEmpty());

    }

}