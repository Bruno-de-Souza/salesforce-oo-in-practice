/**
 * @author bruno.moreira
 */
@isTest
public class SetTest {
    
    @isTest
    public static void cleanCodeMoment() {

        // Good and meaningful names
        Set<Account> accounts;
        Set<Account> approvedAccounts;
        Set<Account> pendingAccounts;
        Set<Account> rejectAccounts;
        Set<Id> accountIds;

        // Bad Not Use
        Set<Account> accs;
        Set<Account> accountList;
        Set<Account> accountLst;
        Set<Account> accsList;

    }

    @isTest
    public static void shouldCreateSetCollection() {

        Set<Account> accounts = new Set<Account>(ListTest.setupOfAccounts());

        Assert.areEqual(20, accounts.size());

        accounts.add(new Account ( Name = 'Test 0', BillingState = 'SP' ));
        accounts.add(new Account ( Name = 'Test 1', BillingState = 'MG' ));

        Assert.areEqual(22, accounts.size());

    }

    @isTest
    public static void shouldIterateSetCollection() {

        Set<Account> accounts = new Set<Account>(ListTest.setupOfAccounts());
        
        accounts.add(new Account ( Name = 'Test 0', BillingState = 'SP' ));
        accounts.add(new Account ( Name = 'Test 1', BillingState = 'MG' ));

        for (Account account : accounts) {

            System.debug( 'Accounts: ' + account );

        }

        System.debug( 'Account set size: ' + accounts.size() );


    }


}