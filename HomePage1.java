package com.objectrepositorylib;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import com.genericlib.BaseClass;



public class HomePage1 extends BaseClass {
	
	@FindBy(xpath="//a[contains(text(),'SIGN-OFF')]")
	private WebElement signOff;
	
	
	
	public void logout()
	{
		//Actions act = new Actions(driver);
		//act.moveToElement(dropdown).perform();
		signOff.click();
		//singOut.click();
	}

}
