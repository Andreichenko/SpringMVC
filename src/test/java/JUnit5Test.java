import org.junit.Test;

public class JUnit5Test {

    /**
     *
     *Simple test for application Junit
     */
    @Test
    public void justAnTest(){
       System.out.print("Test has been finished");
    }

    @Test
    public void secondTest(){
        justAnTest();
        System.out.print("the all tests was loaded");
    }
    @Test
    public void nextTest(){
        justAnTest();
        secondTest();
        System.out.print("TEST 3 is DONE");
    }

}
