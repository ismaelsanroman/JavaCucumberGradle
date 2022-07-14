package javacucumbergradle.pages.elements.testBox;

import org.junit.Test;

import io.cucumber.java.*;
import javacucumbergradle.pages.FunctionsPage;

public class TestBox extends FunctionsPage {

    public TestBox() {
        super(driver);
    }

    @Before
    public void navigateToWeb() {
        System.out.println(" --- navigateToWeb --- ");
        navigateTo("https://demoqa.com/");
    }

    @Test
    public void goToElements() {
        System.out.println(" --- goToElements --- ");
    }

    @Test
    public void insertText() {
        System.out.println(" --- insertText --- ");
    }

    @Test
    public void clickToSubmit() {
        System.out.println(" --- clickToSubmit --- ");
    }

    @Test
    public void verifyText() {
        System.out.println(" --- verifyText --- ");
    }

    @After
    public void endTest() {
        System.out.println(" --- endTest --- ");
    }

}
