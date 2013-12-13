@isTest
private class CheckRemoteActionScopeControllerTest {

    static testMethod void CheckRemoteActionScopeControllerTest() {
    
        String query = 'select Id,Name from Account limit 5';
        
        Test.startTest();
        
        CheckRemoteActionScopeController cls = new CheckRemoteActionScopeController();
        List<sObject> results = CheckRemoteActionScopeController.getRecords(query);
        System.assertEquals(results.isEmpty(), true);
        
        Test.stopTest();
    }
}