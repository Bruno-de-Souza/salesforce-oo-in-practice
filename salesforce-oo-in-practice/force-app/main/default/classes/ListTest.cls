/**
 * @author bruno.moreira
 */
@isTest
public class ListTest {
    
    @isTest
    public static void cleanCodeMoment() {

        //Good Names 
        List<Account> Accounts;
        List<Account> pendingAcounts;
        List<Account> approvedAccounts;
        List<Account> rejectAccounts;

        //Bad NOT USE - Prefix
        List<Account> listAccount;
        List<Account> lstAccounts;

        //Bad NOT USE - Sufix
        List<Account> accountList;
        List<Account> accountLst;

        //Bad NOT USE - Acrônimos
        List<Account> accs;
        List<Account> accList;

        System.debug('Clean Code!');

    }
    
    //Create a new list of accounts and then I add 20 accounts into the new list. After that I need to return the list in the method.
    @isTest
    public static List<Account> setupOfAccounts() {

        List<Account> accounts = new List<Account>();

        for (Integer i = 0; i < 20; i++) {

            accounts.add(new Account (Name = 'Test ' + i));

        }

        System.debug('The size of the new list: ' + accounts.size());
        
        System.debug('Accounts list is empty? ' + accounts.isEmpty());

        return accounts;

    }

    @isTest
    public static void shouldCreateListCollection() {

        List<Account> accounts = setupOfAccounts();

        //Assert class contains methods to evalute conditions in test methods
        Assert.areEqual('Test 0', accounts.get(0).Name);
        Assert.areEqual(20, accounts.size());
        Assert.areEqual(false, accounts.isEmpty());

        System.debug('Accounts before clone: ' + accounts);

        List<Account> clonedAccounts = accounts.deepClone(); 
        
        //Creating a list in an array form
        //Account[] clonedAccounts = accounts.deepClone();
        
        Assert.areEqual('Test 0', clonedAccounts.get(0).Name);
        Assert.areEqual(20, clonedAccounts.size());
        Assert.areEqual(false, clonedAccounts.isEmpty());

        System.debug('Accounts after clone: ' + clonedAccounts);

    }

    @isTest
    public static void shouldIterateListCollection() {

        //Creating e new list of setupOfAccounts()
        List<Account> accounts = setupOfAccounts();

        //For each iterating the new list of accounts
        for ( Account account : accounts ) {
            
            System.debug( 'Accounst: ' + account );

        }

    }

}