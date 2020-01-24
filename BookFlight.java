package com.objectrepositorylib;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import com.genericlib.Filelib;
import com.genericlib.WebDriverCommanlib;

public class BookFlight extends WebDriverCommanlib {
	
	public Filelib fLib = new Filelib();
	
	@FindBy(xpath="//input[@name='passFirst0']")
	private WebElement frstName;
	@FindBy(xpath="//input[@name='passLast0']")
	private WebElement lastName;
	@FindBy(xpath="//select[@name='pass.0.meal']")
	private WebElement meal;
	@FindBy(xpath="//input[@name='billAddress1']")
	private WebElement address;
	@FindBy(xpath="//input[@name='buyFlights']")
	private WebElement securepurchage;


   public void bookflight() throws Throwable
   {
	   String frstname = fLib.getExcelData("Sheet1", 8, 0);
	   String lastname = fLib.getExcelData("Sheet1", 9, 0);
	   String Meals = fLib.getExcelData("Sheet1", 10, 0);
	   String Address = fLib.getExcelData("Sheet1",11, 0);
	   
	   
	   frstName.sendKeys(frstname);
	   lastName.sendKeys(lastname);
	   meal.click();
	   select(meal,Meals);
	   address.sendKeys(Address);
	   securepurchage.click();
   }
}
