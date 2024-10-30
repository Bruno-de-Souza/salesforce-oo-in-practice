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

        Advisor advisor = new Advisor();

        advisor.name =  'Advisor';
        advisor.documentId = '1001001001';
        advisor.code = '1000';
        advisor.salary = 5000;
        List<Account> accounts = new List<Account>();
        System.debug(advisor);

        Assert.isTrue(accounts.isEmpty());

    }

    @isTest
    static void shouldCreateManager () {

        Manager manager = new Manager();
        
        manager.name = 'Maneger';
        manager.documentId = '1001001001';
        manager.code = '1000';
        manager.salary = 12000;
        List<Advisor> advisors = new List<Advisor>();
        System.debug(manager);

        Assert.isTrue(advisors.isEmpty());

    }

}