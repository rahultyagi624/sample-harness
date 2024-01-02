public class ContactManager {
    public static Map<String,List<Contact>> conAccMapReturner(List<contact> conList){
        Map<String,List<Contact>> conMap=new Map<String,List<Contact>>();
        
        for(Contact con:conList){
            String accname=con.Account.name;
            system.debug(accName);
            List<Contact> conList2=[Select id,firstname,account.name from Contact where account.name=:accname];
            conMap.put(accname,conList2);
            //conMap.put
            
        }
        system.debug(conMap);
        return conMap;
    }

}