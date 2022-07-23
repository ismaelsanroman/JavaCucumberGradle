package steps;

import io.cucumber.java.en.*;
import pages.elements.testBox.TestBox;

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

    @When("Rellenamos los campos nombre: <{string}>, email: <{string}>, dirección actual: <{string}> y dirección: <{string}>")
    public void insertText(String name, String email, String actDir, String perDir) {
        testBox.insertText(name, email, actDir, perDir);
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
