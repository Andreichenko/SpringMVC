import org.junit.jupiter.api.Test;
public class JUnit5Test {

    /**
     *
     *Simple test for application
     */
    @Test
    void justAnTest(){
       System.out.print("Test has been finished");
    }

    @Test
    void secondTest(){
        justAnTest();
        System.out.print("the all tests was loaded");
    }

}