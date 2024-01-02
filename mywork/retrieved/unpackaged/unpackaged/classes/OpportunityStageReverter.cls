public class OpportunityStageReverter {
    
    public static void revertStage(Id oppId){
        Opportunity opp=[select id,name, stageName from opportunity where id=:oppId];
        Map<string,String> oppStageMap=new Map<string,String>();
        //Map<Id,List<Account>> accMap=new Map<Id,List<Account>>();
        oppStageMap.put('Closed Lost','Closed Won');
        oppStageMap.put('Closed Won','Negotiation/Review');
        oppStageMap.put('Negotiation/Review','Proposal/Price Quote');
        oppStageMap.put('Proposal/Price Quote',	'Perception Analysis');
        oppStageMap.put('Perception Analysis','Id. Decision Makers');
        oppStageMap.put('Id. Decision Makers','Value Proposition');
        oppStageMap.put('Value Proposition','Needs Analysis');
        oppStageMap.put('Needs Analysis','Qualification');
        oppStageMap.put('Qualification','Prospecting');
        oppStageMap.put('Prospecting','Prospecting');
        
       // List<String> valueList=oppStageMap.values();
        
        system.debug('valueList=>'+oppStageMap.values());
        
        if(oppStageMap.containsKey(opp.StageName)){
           opp.StageName=oppStagemap.get(opp.stagename); 
        }
        update opp;
        
    }

}