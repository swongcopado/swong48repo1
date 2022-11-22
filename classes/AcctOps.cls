public class AcctOps {
    Public static Account setDefaultDescription(Account a){
        If (a.Description != null) return a;
        Else {
            a.Description = 'Default description';
            return a;
        }
    }
       //New methods introduced in DEV2
    public static Account setDefaultBillingAddress(Account a){
        a.billingstreet = '535 Mission Street'; // Head office moved to California
        a.billingstate = 'California';
        a.billingpostalcode ='94105'; 
        return a;
    }
    public static Account setDefaultShippingAddress(Account a){
        a.shippingstreet = '535 Mission Street'; // Head office moved to California 
        a.shippingstate = 'California';
        a.shippingpostalcode ='94105'; 
        return a;
    }
    public static Account setDefaultPhone(Account a) {
        a.Phone='666777888'; // Head office moved to California
        return a;
    }
    public static Account setDefaultURL(Account a) { 
        a.website = 'www.copado.com'; // Head office moved to California
        return a;
    }
}