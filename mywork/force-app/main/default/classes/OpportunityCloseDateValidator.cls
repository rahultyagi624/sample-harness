public class OpportunityCloseDateValidator {
    
    public static void validateCloseDate(id oppId){
        Date todayDate=System.today();
        DateTime todateTime=System.now();
        //List<opportunity> oppList=
        Opportunity opp=[select id ,name,closeDate from opportunity where id=:oppId];
        if(opp.closeDate>todayDate){
            system.debug('Valid');
        }
        else{
            system.debug('Invalid');
        }
    }

}