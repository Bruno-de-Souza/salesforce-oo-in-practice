/**
 * @author bruno.moreira
 */
public class Advisor extends Employee {

    public List<Account> accounts;
    
    public Advisor () {

        System.debug('Inicializei ' + 'Advisor');

    }

    public Advisor (String name) {

        super(name);
        System.debug('Construtor Manager com parâmetro de String da classe mãe');

    }

    public Advisor (List<Account> accounts) {

        this();
        this.accounts = accounts;

        System.debug('Inicializei o Advisor com construtor com accounts');

    }

}