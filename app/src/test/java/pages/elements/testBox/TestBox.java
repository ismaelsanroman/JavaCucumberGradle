package pages.elements.testBox;

import pages.FunctionsPage;

public class TestBox extends FunctionsPage {

    private String name;
    private String email;
    private String actDir;
    private String perDir;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getActDir() {
        return actDir;
    }

    public void setActDir(String actDir) {
        this.actDir = actDir;
    }

    public String getPerDir() {
        return perDir;
    }

    public void setPerDir(String perDir) {
        this.perDir = perDir;
    }

    public TestBox() {
        super(driver);
    }

    public void navigateToWeb() {
        navigateTo("https://demoqa.com/");
    }

    public void goToElements() {
        click("//h5[contains(text(),'Elements')]");
        click("//span[contains(text(),'Text Box')]");
    }

    public void insertText(String name, String email, String actDir, String perDir) {
        sendText("userName", name);
        sendText("userEmail", email);
        sendText("currentAddress", actDir);
        sendText("permanentAddress", perDir);
        setName(name);
        setEmail(email);
        setActDir(actDir);
        setPerDir(perDir);
    }

    public void clickToSubmit() {
        clickId("submit");
    }

    public void verifyText() {

        String var1 = getTextId("name");
        String var2 = getTextId("email");
        String var3 = getTextXp("//p[@id='currentAddress']");
        String var4 = getTextXp("//p[@id='permanentAddress']");

        String[] var1Split = var1.split(":");
        String[] var2Split = var2.split(":");
        String[] var3Split = var3.split(":");
        String[] var4Split = var4.split(":");

        if (var1Split[1] != getName()) {
            if (var2Split[1] != getEmail()) {
                if (var3Split[1] != getActDir()) {
                    if (var4Split[1] != getPerDir()) {
                        System.out.println("- Datos insertados correctamente");
                    }
                }
            }

        } else {
            System.out.println("--- ERROR ---");
        }
    }

    public void endTest() {
        endTest();
    }

}
