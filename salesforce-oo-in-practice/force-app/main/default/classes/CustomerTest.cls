/**
 * @author bruno.moreira
 */
@isTest
public class CustomerTest {
    
    @isTest
    public static void shouldCreateCustomer () {

        Customer customer = new Customer();
        customer.name = 'teste 01';
        customer.creditAmount = 1000;

    }

}