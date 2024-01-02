public class ContactLeadSourceUpdater {
    public static void updateLeadSource(Id conId,string str,Integer num){
        COntact con=[select id,LeadSource from contact where id=:conID];
        if(con.LeadSource!=null){
            con.LeadSource=str;
        }
        update con;
    }

}