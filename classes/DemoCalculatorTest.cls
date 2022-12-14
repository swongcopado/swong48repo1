@isTest
public class DemoCalculatorTest {
    
    @isTest
    public static void testAdd() {
        Integer num1 = 10;
        Integer num2 = 5;
        Integer expected = num1 + num2;
        Integer actual = DemoCalculator.add(num1,num2);
        String msg = 'Expecting 15, Actual:' + String.valueOf(actual);
        System.assertEquals(expected, actual, msg);
        
        num1 = null;
        num2 = null;
        expected = 0;
		actual = DemoCalculator.add(num1,num2);
        msg = 'Expecting 0, Actual:' + String.valueOf(actual);
        System.assertEquals(expected, actual, msg);        
    }

}