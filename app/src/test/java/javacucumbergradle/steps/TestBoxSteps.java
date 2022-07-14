package javacucumbergradle.steps;

import io.cucumber.java.en.*;
import javacucumbergradle.pages.elements.testBox.TestBox;

public class TestBoxSteps {
    TestBox testBox = new TestBox();

    @Given("^Abrimos el navegador y accedemos a DemoQA$")
    public void navigateToWeb() {
        testBox.navigateToWeb();
    }

    @When("^Accedemos a la seccion de TestBox dentro de Elements$")
    public void goToElements() {
        testBox.goToElements();
    }

    @When("^Rellenamos los campos que nos muestra$")
    public void insertText() {
        testBox.insertText();
    }

    @And("^Pulsamos sobre el boton de Submit$")
    public void clickToSubmit() {
        testBox.clickToSubmit();
    }

    @And("^Comprobamos que se ha realizado correctamente$")
    public void verifyText() {
        testBox.verifyText();
    }

    @Then("^Finalizamos el test$")
    public void endTest() {
        testBox.endTest();
    }

}
