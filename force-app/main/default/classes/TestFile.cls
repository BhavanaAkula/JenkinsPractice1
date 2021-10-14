@isTest
public class TestFile {
    public static @isTest void meth(){
Packages__c p1=new packages__c();
p1.name='10 Day package';
p1.Price__c=10024;

Packages__c p2=new packages__c();
p2.name='9 Day package';
p2.Price__c=9912;

Packages__c p3=new packages__c();
p3.name='7 Day package';
p3.Price__c=7274;

Packages__c p4=new packages__c();
p4.name='11 Day package';
p4.Price__c=15523;
List<Packages__c> packs=new List<Packages__c>();
packs.add(p1);
packs.add(p2);
packs.add(p3);
packs.add(p4);

try{
insert packs;
System.debug('data got inserted ');
}
catch(Exception e){
    System.debug('invalid data');
}
List<Packages__c> my_p2=[SELECT Name,Price__c FROM Packages__c   all rows];
p2.Price__c=15523;
update p2;
delete p2;
undelete p2;
}
}