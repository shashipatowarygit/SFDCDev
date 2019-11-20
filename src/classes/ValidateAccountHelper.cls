Public with sharing class  ValidateAccountHelper {
  public static void updateContactAddress(Map<id,Account> accountMap){
    Contact[] cons = [SELECT LastName FROM Contact WHERE AccountId IN :accountMap.keySet()];
    for (Contact con : cons) {
      Account curAccount = accountMap.get(con.AccountId);
      con.mailingStreet = curAccount.BillingStreet;  
    }
  }
}