@Test
Feature: Testing con Java, Gradle y Cucumber

    Implementamos un test de prueba con Java, Gradle, Junit y Cucumber

    @TestBox
    Scenario: Demo QA Test
        Given Abrimos el navegador y accedemos a DemoQA
        When Accedemos a la seccion de TestBox dentro de Elements
        When Rellenamos los campos que nos muestra
        And Pulsamos sobre el boton de Submit
        And Comprobamos que se ha realizado correctamente
        Then Finalizamos el test