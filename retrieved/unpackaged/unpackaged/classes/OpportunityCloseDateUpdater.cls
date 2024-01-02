public class OpportunityCloseDateUpdater {
    public static void updateCloseDate(Id oppId){
        Opportunity opp=[Select Id,CloseDate from Opportunity where Id=:oppId];
        if(opp.CloseDate!=null){
        opp.CloseDate=opp.CloseDate.addDays(1);
        update opp;
    }
    }

}