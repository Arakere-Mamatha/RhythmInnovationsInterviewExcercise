public with sharing class ContactController {
    @AuraEnabled(cacheable=true)
    public static List<Contact> getContacts() {
        return [SELECT Id, FirstName, LastName, Email, Title FROM Contact WHERE LastName LIKE 'A%' OR LastName LIKE 'E%' OR LastName LIKE 'I%' OR LastName LIKE 'O%' OR LastName LIKE 'U%'];
    }
}