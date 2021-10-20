public with sharing class Salesforceclass {
    @InvocableMethod
public static void ActCon(List<Contact> con){
List<Account> a=new List<Account>();
List<Id> accountids=new List<Id>();
for(Contact c:con){
if(c.accountid!=null){
accountids.add(c.AccountId);
}
//Account acc=new Account();
List<Account> contacts=[select name,(select name from contacts where status__c=true) from account where id in: accountids];
for(Account acc :contacts){
//Account acc=new Account();
//if(contacts.size()>0){
acc.Number_of_active_contacts__c=acc.contacts.size();
a.add(acc);
}
update aa;
}
}
}
