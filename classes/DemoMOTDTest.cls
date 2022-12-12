@isTest
public class DemoMOTDTest {
    
	@isTest
    static public void testGetMOTD() {
        String initialMessage = DemoMOTD.getMOTD();
        Test.startTest();
        DemoMOTD.retrieveMOTD();
        Test.stopTest();
        String newMotd = DemoMOTD.getMOTD();
        System.assertNotEquals(initialMessage, newMotd);
    }    

}