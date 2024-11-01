/**
 * @author bruno.moreira
 */
public class Manager extends Employee {
    
    public List<Advisor> advisors;

    public Manager () {

        System.debug('Inicializei ' + 'Manager');
        this.advisors = new List<Advisor>();
    }

    public Manager (String name) {

        super(name);
        System.debug('Construtor Manager com parâmetro de String da classe mãe');

    }

    public Manager (List<Advisor> advisors) {

        this();
        this.advisors = advisors;

        System.debug('Construtor Manager com a lista de advisors');

    }

}