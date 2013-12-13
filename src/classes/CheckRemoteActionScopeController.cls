/**
 * @RemoteActionの戻り値のスコープ検証
 * © 2013 Force.com Developer
 * ----------------------------------------
 * @createdName      : Taiki,Yoshikawa
 * @lastModifiedName : Taiki,Yoshikawa
 * ----------------------------------------
 */
public with sharing class CheckRemoteActionScopeController {
    
    /**
     * コンストラクタ
     */
    public CheckRemoteActionScopeController() {
        
    }
    
    @RemoteAction
    public static List<sObject> getRecords(String query){
        return Database.query(query);
    }
}