public class SampleAccountClass {
    public static void sample(){
        List<Account> accList1=[select id,name,Annual_Revenue__c from account where Industry ='Banking'  ];
        system.debug('accList1=>'+accList1);
       // List<opportunity> oppList=[];
        integer i=0;
        for(Account ac:accList1){
            system.debug('acc=>'+ac);
            //if(ac.Annual_Revenue__c==null || ac.Annual_Revenue__c!=10000){
            ac.Annual_Revenue__c=10000;
            //acc.id=acc.name+'1000000';
            ac.name=ac.name+i;
            i=i+1;
        //}
        }
        update accList1;
        system.debug('records updated successfully=>'+acclist1);
    }

}