public class CaseMetrics {
    public static Decimal calculateAverageAge(list<Case> caseList){
        if(caseList.size()<=0){
            return 0;
        }
        Decimal totalAge=0.0,AverageAge=0.0;
        Date currentDate=Date.today();
        for(Case c:caseList){
           // totalAge+=(Decimal)(currentDate.daysBetween(c.createdDate.date));
        }
        //AverageAge=totalAge/caseList.size();
        return AverageAge;
    }

}