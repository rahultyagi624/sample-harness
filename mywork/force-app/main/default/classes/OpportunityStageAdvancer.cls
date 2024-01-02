public class OpportunityStageAdvancer {
    public static void advanceStage(Id oppId){
        Opportunity opp=[Select id,stageName from Opportunity where Id=:oppId];
        Map<String,String> oppStageMap=new Map<String,String>();
        //List<string> strList=new List<String>();
        oppStageMap.put('Propecting','Qualification');
        oppStageMap.put('Qualification','Needs Analysis');
        
        if(oppStageMap.containsKey(opp.StageName)){
            opp.StageName=oppStageMap.get(opp.StageName);
        }
        /*if(opp.StageName!=null){
            if(opp.StageName=='Prospecting'){
                opp.StageName='Qualification';
            }
            else if(opp.StageName=='Qualification'){
                opp.StageName='Needs Analysis';
            }
            //and so on
        }*/
        update opp;
    }

}