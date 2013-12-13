public with sharing class CheckRemoteActionScopeController {
	
	public CheckRemoteActionScopeController() {
		
	}
	
	@RemoteAction
    public static List<sObject> getRecords(String query){
        return Database.query(query);
    }
}