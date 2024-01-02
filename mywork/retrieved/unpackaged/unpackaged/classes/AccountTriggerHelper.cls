public class AccountTriggerHelper {
    public static void beforeAccountInsert(List<Account> newList){
        for(Account acc:newList){
                acc.active__c='yes';
                if(acc.industry=='Chemicals'){
                    acc.rating='hot';
                }
                else{
                    acc.rating='warm';
                }
            }
        
    }
    
    public static void afterAccountInsert(List<Account> newList){
        List<opportunity> oppList=new List<Opportunity>();
        //List<Contact> conList=new List<Contact>();
        for(account acc:newList){
            Opportunity opp=new Opportunity();
            //Contact con=new Contact();
            opp.name=acc.name;
            opp.AccountId=acc.Id;
            //opp.CloseDate=system.today();
            //Date bd=date.newInstance(1997,09,26);
            opp.CloseDate=date.newInstance(1997,09,26);
            opp.StageName='Prospecting';
            oppList.add(opp);
            /*con.lastName=acc.Name;
            con.AccountId=acc.id;
            conlist.add(con);*/
        }
        insert opplist;
        //insert conList;
    }
    public static void BeforeAccountUpdate(List<Account> newList,Map<id,Account> oldMap){
        for(account acc:newList){
            if(acc.Phone !=oldMap.get(acc.id).phone){
                system.debug('oldmap value=>'+oldMap.get(acc.id)+acc.Phone+'this is it');
                system.debug('oldmap value phone=>'+oldMap.get(acc.id).phone);
                acc.Description__c='Phone Number for this account is updated';
            }
            else{
                system.debug('inside else');
                acc.Description__c='Phone Number for this account is not updated';
            }
            /*if(acc.Type !=oldMap.get(acc.id).type){
                //business logic
            }*/
        }
    } 
    public static void BeforeAccountUpdatewithOldList(List<Account> newList,List<Account> oldList){
        for(Account accNew:newList){
            for(Account accOld:oldList){
                if(accNew.Phone!=accOld.Phone){
                    accNew.Description__c='Phone Number for this account is updated';
                   
                }
                 else{
                system.debug('inside else');
                accNew.Description__c='Phone Number for this account is not updated';
            }
            }
        }
    }
    public static void afterAccountUpdate(List<Account> newList,Map<id,Account> oldMap){
        //Map<id,account> newAccMap=new Map<Id,Account>();
        List<Id> newAccIdList=new List<Id>();
        for (account acc:newList){
            if(acc.Phone !=oldMap.get(acc.id).phone){ // here we are comparing new phone number with the old phn number
                newAccIdList.add(acc.Id);
            }
        }
        system.debug('newAccIdList=>'+newAccIdList);
        List<opportunity> oppList=[Select id,phone__c,Account.phone,name from opportunity where AccountId IN:newAccIdList];
        system.debug('oppList->'+oppList);
        List<opportunity> newOppList=new List<opportunity>();
        for(opportunity opp:oppList){
            Opportunity op=new Opportunity();
            op.id=opp.id;
            op.phone__c=opp.Account.phone;
            newOppList.add(op);
        }
        update newOppList;
       
    }
}