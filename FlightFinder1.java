package com.objectrepositorylib;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

import com.genericlib.Filelib;
import com.genericlib.WebDriverCommanlib;

public class FlightFinder1 extends WebDriverCommanlib {
	
	public Filelib fLib = new Filelib();
	
	@FindBy(xpath="//body//b//input[1]")
	private WebElement radobtn;
	@FindBy(xpath="//select[@name='passCount']")
	private WebElement psgndropdown;
	@FindBy(xpath="//select[@name='fromPort']")
	private WebElement fromPortdropdown;
	@FindBy(xpath="//select[@name='fromMonth']")
	private WebElement fromMonthdropdown;
	@FindBy(xpath="//select[@name='fromDay']")
	private WebElement fromDaydropdown;
	@FindBy(xpath="//select[@name='toPort']")
	private WebElement toPortdropdown;
	@FindBy(xpath="//select[@name='toMonth']")
	private WebElement toMonthdropdown;
	@FindBy(xpath="//select[@name='toDay']")
	private WebElement toDaydropdown;
	@FindBy(xpath="//font[contains(text(),'Economy class')]")
	private WebElement srvclsradobtn;
	@FindBy(xpath="//select[@name='airline']")
	private WebElement airlinedropdown;
	@FindBy(xpath="//input[@name='findFlights']")
	private WebElement continuebtn;
	
	
	
	public void flightfinder() throws Throwable
	{
		String passCount = fLib.getExcelData("Sheet1", 0, 0);
		String fromPortt = fLib.getExcelData("Sheet1", 1, 0);
		String fromMonth = fLib.getExcelData("Sheet1", 2, 0);
		String fromDay = fLib.getExcelData("Sheet1", 3, 0);
		String toPort = fLib.getExcelData("Sheet1", 4, 0);
		String toMonth = fLib.getExcelData("Sheet1", 5, 0);
		String toDay = fLib.getExcelData("Sheet1", 6, 0);
		String airline = fLib.getExcelData("Sheet1", 7, 0);
		
		
		
		radobtn.click();
		psgndropdown.click();
		select(psgndropdown,passCount);
		fromPortdropdown.click();
		select(fromPortdropdown,fromPortt);
		fromMonthdropdown.click();
		select(fromMonthdropdown,fromMonth);
		fromDaydropdown.click();
		select(fromDaydropdown,fromDay);
		toPortdropdown.click();
		select(toPortdropdown,toPort);
		toMonthdropdown.click();
		select(toMonthdropdown,toMonth);
		toDaydropdown.click();
		select(toDaydropdown,toDay);
		srvclsradobtn.click();
		airlinedropdown.click();
		select(airlinedropdown,airline);
		continuebtn.click();
		
	}

}
