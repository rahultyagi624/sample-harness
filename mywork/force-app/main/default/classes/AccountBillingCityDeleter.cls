public class AccountBillingCityDeleter {
    public static void deleteAccountBillingCity(Id accId){
        Account acc=[Select Id,BillingCity from Account where Id=:accId];
        if(acc.BillingCity!=null){
        acc.BillingCity=null;
        update acc;
        }
    }

}