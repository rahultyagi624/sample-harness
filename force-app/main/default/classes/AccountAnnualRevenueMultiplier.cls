public class AccountAnnualRevenueMultiplier {
    public static void multiplyAnnualRevenue(Id accID){
//checking
        Account acc=[Select Id,annualRevenue from Account where Id=:accId];
        if(acc.AnnualRevenue!=null){
        acc.AnnualRevenue=acc.AnnualRevenue*1.5;
        update acc;
        }
    }

}
