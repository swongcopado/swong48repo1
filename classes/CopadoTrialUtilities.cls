public class CopadoTrialUtilities {
    
    static public void setTrialUserPasswords(String usernamePattern, String passwd) {
        List<User> userList = new List<User>();
        userList = [SELECT Id from User WHERE IsActive = true
                        AND Username LIKE :usernamePattern];
        for (User u : userList)
        {
            System.setPassword(u.Id, passwd);
            System.debug('DONE: ' + u.Id);
        }
    }
    
    static public void RollbackDemoMethod() {
        List<Opportunity> opps = new List<Opportunity>();
        opps = [SELECT Id from Opportunity WHERE Amount > 50000];
        // This method was added to show how a Rollback in Copado will simply update the Apex class by removing this section of the code.
    }

}