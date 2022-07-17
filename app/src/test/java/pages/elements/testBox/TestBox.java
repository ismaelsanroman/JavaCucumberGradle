package pages.elements.testBox;

import pages.FunctionsPage;

public class TestBox extends FunctionsPage {

    public TestBox() {
        super(driver);
    }

    public void navigateToWeb() {
        System.out.println(" --- navigateToWeb --- ");
        navigateTo("https://demoqa.com/");
    }

    public void goToElements() {
        System.out.println(" --- goToElements --- ");
    }

    public void insertText() {
        System.out.println(" --- insertText --- ");
    }

    public void clickToSubmit() {
        System.out.println(" --- clickToSubmit --- ");
    }

    public void verifyText() {
        System.out.println(" --- verifyText --- ");
    }

    public void endTest() {
        System.out.println(" --- endTest --- ");
    }

}
