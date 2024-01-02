public class DemoAccount {
    public static void DemoString(){
        List<String> strList=new List<String>();
        strList.add('Rhitik');
        strList.add('Shubham');
        strList.add('Rhitik');
        strList.add('123');
        system.debug('List of String=>'+strList);
        List<Integer> intList=new List<integer>{123,456,789};
        System.debug('List of Integer=>'+intList);
        Set<String> strSet=new Set<String>();
        strSet.add('Rhitik');
        strSet.add('Shubham');
        strSet.add('Rhitik');
        Set<integer> intSet=new Set<integer>{123,456,789,123};
        System.debug('Set of Integer=>'+intSet);
        system.debug('Set of String=>'+strSet+strList);
        
    }
    
    public static void demoMap(){
        Map<Integer,String> dMap=new Map<Integer,String>();
        dMap.put(1,'Rhitik');
        dMap.put(2,'Shubham');
        dMap.put(3,'Rhitik');
        system.debug('Map=>'+dMap);
        dMap.put(1,'Arun');
        system.debug('Map=>'+dMap.keySet());
        system.debug('Map values=>'+dMap.Values());
        system.debug(dMap.get(1)+'Particular key 1 value=>');
        dMap.remove(2);
        system.debug('Map=>'+dMap);
    }

}