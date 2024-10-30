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

}