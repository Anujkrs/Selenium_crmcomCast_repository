package com.objectrepositorylib;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import com.genericlib.WebDriverCommanlib;

public class SelectFlight extends WebDriverCommanlib {
	
	@FindBy(xpath="//table//table//table//table//table[1]//tbody[1]//tr[5]//td[1]//input[1]")
	private WebElement radobtn1;
	@FindBy(xpath="//table[2]//tbody[1]//tr[9]//td[1]//input[1]")
	private WebElement radobtn2;
	@FindBy(xpath="//input[@name='reserveFlights']")
	private WebElement continuebtn;
	
	public void selectflight() throws Throwable
	{
		/*waitAndclickelementInGUI(radobtn1);
		waitAndclickelementInGUI(radobtn2);
		waitAndclickelementInGUI(continuebtn);*/
		waitAndClickElement(radobtn1);
		//radobtn1.click();
		radobtn2.click();
		continuebtn.click();
		
		
	}

}
