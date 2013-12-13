/**
 * @RemoteActionの戻り値のスコープ検証
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
@isTest
private class CheckRemoteActionScopeControllerTest {

    /**
     * CheckRemoteActionScopeControllerTest
     */
    static testMethod void CheckRemoteActionScopeControllerTest() {
    
        String query = 'select Id,Name from Account limit 5';
        
        Test.startTest();
        
        CheckRemoteActionScopeController cls = new CheckRemoteActionScopeController();
        List<sObject> results = CheckRemoteActionScopeController.getRecords(query);
        System.assertEquals(results.isEmpty(), true);
        
        Test.stopTest();
    }
}