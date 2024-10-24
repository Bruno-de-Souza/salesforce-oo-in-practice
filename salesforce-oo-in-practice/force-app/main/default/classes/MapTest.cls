/**
 * @author bruno.moreira
 */
@isTest
public class MapTest {
    
    @isTest
    public static void shoudlCreateMapCollection() {

        Map<Account, Contact> contactsByAccount = new Map<Account, Contact>();

        Account account = new Account (Name = 'Teste 1');
        Contact contact = new Contact (FirstName = 'Contact Teste');

        contactsByAccount.put(account, contact);

        System.debug('Contacts by Account: ' + contactsByAccount);

        Assert.areEqual(1, contactsByAccount.size());

        Contact correlatedContacts = contactsByAccount.get(account);

        contactsByAccount.put(account, new Contact (FirstName = 'Teste 2'));

        System.debug('Contacts by Account II: ' + contactsByAccount);

        Assert.areEqual(1, contactsByAccount.size());
        Assert.areNotEqual(contact, contactsByAccount.get(account));

        //Creating a map and putting key and value into the collection
        Map<Account, Contact> digitalContacts = new Map<Account, Contact>{

            account => contact

        };

        digitalContacts.containsKey(account);

        System.debug('Digital contacts: ' + digitalContacts);

    }

    @isTest
    public static void shouldIterateMapCollection() {

        Map<String, Account> accounts = setupOfAccounts();

        for (String key : accounts.keySet()) {
            
            Account account = accounts.get(key);

            System.debug( 'Accounts: ' + account);

        }

    }

    @isTest
    public static void shouldGroupAccountsByState() {

        Map<String, Account> accounts = setupOfAccounts();

        Map<String, List<Account>> accountsByState = new Map<String, List<Account>>();

        for (String key : accounts.keySet()) {
            
            Account account = accounts.get(key);

            if (!accountsByState.containsKey(account.BillingState)) {

                accountsByState.put(account.BillingState, new List<Account>());

            }

            System.debug('Accounts By State: ' + accountsByState.get(account.BillingState).add(account));

        }

    }

    @isTest
    public static Map<String, Account> setupOfAccounts() {

        Map<String, Account> accounts = new Map<String, Account>();

        for (Integer i = 0; i < 20; i++) {

            String state = Math.mod(i, 2) == 0 ? 'SP' : 'MG';

            accounts.put('' + i, new Account (Name = 'Teste' + i, BillingState = state));

        }

        return accounts;
 
    }

}