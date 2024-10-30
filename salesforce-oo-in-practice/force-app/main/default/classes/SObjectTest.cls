/**
 * @author bruno.moreira
 */
@isTest
public class SObjectTest {
    
    @isTest
    public static void shouldAddError () {

        Account account = new Account(Name = ' Account Teste ');
        account.put('BillingStreet', ' Rua J ');

        account.addError(' Informe o CNPJ ');

        Assert.isTrue(account.hasErrors());

        System.debug(' Account: ' + account + ' HashCode: ' + account.hashCode());

        Opportunity opportunity = new Opportunity();
        opportunity.put('Name', ' Oportunidade Teste ');

        opportunity.addError(' Informe a conta ');

        Assert.isTrue(opportunity.hasErrors());

        System.debug('Opportunity: ' + opportunity + ' HashCode: ' + account.hashCode());

    }

}