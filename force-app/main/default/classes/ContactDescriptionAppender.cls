public class ContactDescriptionAppender {
    
    public static void appendDescription(Id conID){
        Contact con=[Select id,description from contact where Id=:conId];
        if(con.Description!=null){
        con.Description=con.Description+' Hello';
        update con;
        }
    }

}