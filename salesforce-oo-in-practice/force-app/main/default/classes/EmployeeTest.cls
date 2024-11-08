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

        Assert.areEqual(15000, advisor.getBonus());

    }

    @isTest
    public static void shouldCreateManager () {

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

        Assert.areEqual(30000, manager.getBonus());

    }

    @isTest
    public static void shouldCreateAnalyst () {

        Analyst analyst = new Analyst();

        analyst.name = 'Analyst';
        analyst.salary = 5000;
        System.debug('Analyst: ' + analyst);
        System.debug('Analsyst Salary with bonus: ' + analyst.getBonus());

        Assert.areEqual(15750, analyst.getBonus());

    }

    @isTest
    public static void shouldCreateDirector () {

        Director director = new Director();
        director.name = 'Director';
        director.salary = 20000;

        Assert.areEqual(100000, director.getBonus());

    }

    @isTest
    public static void shouldCreateicePresidentLatam () {

        VicePresidentLatam vicePresidentLatam = new VicePresidentLatam();

        vicePresidentLatam.name = 'Vice President Latam';
        vicePresidentLatam.salary = 50000;

        Assert.areEqual(750000, vicePresidentLatam.getBonus(), 'Vice President Salary');

    }

    @isTest
    public static void shouldTestUpcastAndDownCastEMployee () {

        //Analyst analyst = new Analyst ();
        //analyst.code = '2321132';
        //analyst.salary = 1000;

        //Upcast - implícito
        //Employee employee = analyst;      

        //Assert.areEqual ( 8750, employee.getBonus());

        //Downcast - sem explicitar vai gerar um erro de compilação
        //Manager manager = employee;

        //Cenário abaixo vai gerar um erro em tempo de execução

        //Downcast - aplicando o operado de cast ()
        //Manager manager = (Manager) employee;

        //Para exercitar crie uma instancia de Manager e faça os mesmos passos

        Manager manager = new Manager();
        
        manager.code = '12345 - Manager';
        manager.salary = 1000;

        // Upcast
        Employee employee = manager;

        Assert.areEqual(3000, employee.getBonus());

        // Downcast com erro ao executar o teste
        Analyst analyst = (Analyst) employee;

    }

}