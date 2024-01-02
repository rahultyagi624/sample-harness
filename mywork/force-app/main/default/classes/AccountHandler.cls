public class AccountHandler {
    public static void createNewAccount(){
        Account acc=new Account();
        acc.Name='New Company';
        acc.Industry='Banking';
        insert acc;
    }
    
    public static List<Account> createMultiAccount(integer n){
        List<Account> acclist=new List<Account>();
        for(integer i=0;i<n;i++){
            Account acc1=new Account();
            acc1.Name='New Acc'+i;
            acc1.Industry='Electronics';
            acclist.add(acc1);
        }
        insert acclist;
        return acclist;
        //system.debug(acclist);
    }
    
    public static void updateAccountName(Id accId){
        Account acc=[select id,name from account where id=:accId];
        acc.name='Updated Company Name';
        update acc;
    }
    
    public static void createMultipleAccounts(){
        Account acc1=new Account();
        acc1.Name='New Company1';
        acc1.Industry='Banking';
        Account acc2=new Account();
        acc2.Name='New Company2';
        acc2.Industry='Banking';
        Account acc3=new Account();
        acc3.Name='New Company3';
        acc3.Industry='Banking';
        List<Account> accList=new List<Account>();
        accList.add(acc1);
        accList.add(acc2);
        accList.add(acc3);
        insert accList;
    }
    
    public static void createMultipleAccounts(Integer n){
        List<Account> accList=new List<Account>();
        for(Integer i=0;i<n;i+1){
            Account acc1=new Account();
        acc1.Name='New Account'+i;
        acc1.Industry='Banking';
            accList.add(acc1);
        }
        insert accList;
    }
    

}