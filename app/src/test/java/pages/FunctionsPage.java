package pages;

import java.time.Duration;

import org.openqa.selenium.By;
import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.chrome.ChromeOptions;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.WebDriverWait;

import io.github.bonigarcia.wdm.WebDriverManager;

public class FunctionsPage {

    protected static WebDriver driver;

    // Carga del Webdriver del repositorio de GitHub de "Boni Garcia"
    static {
        ChromeOptions chromeOptions = new ChromeOptions();
        WebDriverManager.chromedriver().setup();
        // chromeOptions.addArguments ("--headless", "--disable-gpu",
        // "--window-size=1920,1200",
        // "--ignore-certificate-errors","--disable-extensions","--no-sandbox","--disable-dev-shm-usage");
        driver = new ChromeDriver(chromeOptions);
    }

    public FunctionsPage(WebDriver driver) {
        FunctionsPage.driver = driver;
    }

    // Función para navegar hacia...
    public static void navigateTo(String url) {
        driver.navigate().to(url);
        driver.manage().window().maximize();
    }

    // Función para click normal
    public static void click(String tag) {
        new WebDriverWait(driver, Duration.ofSeconds(5))
                .until(ExpectedConditions.elementToBeClickable(By.xpath(tag)));
        driver.findElement(By.xpath(tag)).click();
    }

    public static void clickId(String tag) {
        new WebDriverWait(driver, Duration.ofSeconds(5))
                .until(ExpectedConditions.elementToBeClickable(By.id(tag)));
        driver.findElement(By.id(tag)).click();
    }

    // Función de click especial cuando el normal no funciona
    public static void specialClick(String tag) {
        new WebDriverWait(driver, Duration.ofSeconds(5))
                .until(ExpectedConditions.elementToBeClickable(By.xpath(tag)));
        Actions action = new Actions(driver);
        action.click(driver.findElement(By.xpath(tag))).build().perform();
    }

    // Función para obtener el texto de un sitio determinado
    public static String getTextId(String tag) {
        new WebDriverWait(driver, Duration.ofSeconds(5))
                .until(ExpectedConditions.elementToBeClickable(By.id(tag)));
        return driver.findElement(By.id(tag)).getText();
    }

    public static String getTextXp(String tag) {
        new WebDriverWait(driver, Duration.ofSeconds(5))
                .until(ExpectedConditions.elementToBeClickable(By.xpath(tag)));
        return driver.findElement(By.xpath(tag)).getText();
    }

    // Función para enviar el texto que deseemos
    public static void sendText(String tag, String text) {
        new WebDriverWait(driver, Duration.ofSeconds(5))
                .until(ExpectedConditions.elementToBeClickable(By.id(tag)));

        driver.findElement(By.id(tag)).clear();
        driver.findElement(By.id(tag)).sendKeys(text);
    }

    // Función de espera implicita
    public static void impWaith(Integer time) {
        driver.manage().timeouts().implicitlyWait(Duration.ofSeconds(time));
    }

    // Función para cerrar todo el TestPlan
    public void endTest() {
        driver.close();
        driver.quit();
    }

}
