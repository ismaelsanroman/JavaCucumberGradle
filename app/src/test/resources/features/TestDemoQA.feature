@Test
Feature: Testing con Java, Gradle y Cucumber

    Implementamos un test de prueba con Java, Gradle, Junit y Cucumber

    Background: DemoQATest
        Given Abrimos el navegador y accedemos a DemoQA

    @TestBox
    Scenario: Demo QA Test
        When Accedemos a la seccion de TestBox dentro de Elements
        When Rellenamos los campos nombre: <"Ismael">, email: <"ismael@gmail.com">, dirección actual: <"Guadalupe"> y dirección: <"Badajoz">
        And Pulsamos sobre el boton de Submit
        And Comprobamos que se ha realizado correctamente
        Then Finalizamos el test