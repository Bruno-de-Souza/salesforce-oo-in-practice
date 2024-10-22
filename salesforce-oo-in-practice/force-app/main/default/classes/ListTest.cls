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
    public static List<Account> setupOFAccounts() {

        List<Account> accounts = new List<Account>();

        for (Integer i = 0; i <= 20; i++) {

            accounts.add(new Account (Name = 'Test ' + i));

        }

        System.debug('The size of the new list: ' + accounts.size());

        return accounts;

    }

}