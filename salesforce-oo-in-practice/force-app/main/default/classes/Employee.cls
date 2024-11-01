/**
 * @author bruno.moreira
 */
public virtual class Employee {
    
    public String name;

    public String code;

    public String documentId;

    public Decimal salary;

    public Employee () {

        System.debug( 'Inicializei ' + 'Employee' );

    }

    public Employee (String name) {

        this();
        this.name = name;

        System.debug( 'Construtor Employee com parametro de String' );

    }

    public Decimal getBonus () {

        return this.salary * 1.75;

    }

}