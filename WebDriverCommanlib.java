package com.genericlib;

import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.ExpectedConditions;
import org.openqa.selenium.support.ui.Select;
import org.openqa.selenium.support.ui.WebDriverWait;

public class WebDriverCommanlib extends BaseClass {
	
	public static String parentwindowID;
    public static String childwindowID;
    
    public void waitAndclickelementInGUI(WebElement element) throws Throwable {
    	int count=0;
    	while(count<20) {
    		try {
				element .click();
			} catch (Exception e) {
				Thread.sleep(2000);
				count++;
			}
    	}
    }
    public void waitAndClickElement(WebElement element)
    {
    	element.click();
    }
    public void waitforpagetoload() {
    	driver.manage().timeouts().implicitlyWait(10, TimeUnit.SECONDS);
    }
    public void movemouse(WebElement element) {
    	Actions act=new Actions(driver);
    	act.moveToElement(element).perform();
    }
    public void select(WebElement element,String options) {
    	Select sel=new Select(element);
    	sel.selectByVisibleText(options);
    }
    public void waitforelementpresent(WebElement element) {
    	WebDriverWait wait=new WebDriverWait(driver, 20);
    	wait.until(ExpectedConditions.visibilityOf(element));
    }
    public void getwindowhandlesIDs() {
    	Set<String> set=driver.getWindowHandles();
    	Iterator<String> it=set.iterator();
    	parentwindowID=it.next();
    	childwindowID=it.next();
    }
    
    public void switctToParentWindow() {
    	driver.switchTo().window(parentwindowID);
    }
    public void switctToChildtWindow() {
    	driver.switchTo().window(childwindowID);
}
	

}
