public class ContactBirthdateUpdater {
    public static void updateBirthdate(Id conId,Date bD){
        Contact con=[select id,birthDate from Contact where id=:conId];
        con.Birthdate=bd;
        update con;
    }

}