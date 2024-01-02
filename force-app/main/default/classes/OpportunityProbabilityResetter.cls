public class OpportunityProbabilityResetter {
    public static void resetProbability(){
        List<Opportunity> oppList=[select id,Probability from opportunity];
        for(Opportunity opp:oppList){
            if(opp.Probability!=null){
                opp.Probability=0;
            }
        }
        update oppList;
    }

}