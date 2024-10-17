/**
 * @author bruno.moreira
 */
public class Customer {
    
    public static final String PREMIUM_TYPE = 'Premium';

    public String name;

    public string document;

    public Decimal creditAmount;

    public Boolean isBlocked;

    public Address billingAddress;

    public Customer() {

        this.name = name;
        
        this.document = document;
        
        this.creditAmount = 10;
        
        this.isBlocked = false;
        
        this.billingAddress = billingAddress;
        
        System.debug( 'Construtor padrão' );  
    }

    public void addCredit (Decimal amount) {

        this.creditAmount += amount;
        System.debug( 'Amount: ' + amount );
        System.debug( 'addCredit Method' );

    }
}