/**
 * @author bruno.moreira
 */
public abstract class Employee {
    
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

    }

    public abstract Decimal getBonus ();

}