package com.crmtest;


import org.openqa.selenium.support.PageFactory;
import org.testng.annotations.Listeners;
import org.testng.annotations.Test;

import com.genericlib.BaseClass;
import com.objectrepositorylib.BookFlight;
import com.objectrepositorylib.FlightFinder1;
import com.objectrepositorylib.SelectFlight;
import com.relevantcodes.extentreports.ExtentTest;
import com.relevantcodes.extentreports.LogStatus;
@Listeners(com.genericlib.Listenerimp.class)
public class LoginTest1 extends BaseClass {
	
	@Test
	public void loginTest() throws Throwable{
		ExtentTest testlog = extent.startTest("logginnewtoursApp");
		testlog.log(LogStatus.INFO, "Login to APP");
		testlog.log(LogStatus.PASS, "Pass APP");
		//testlog.log(LogStatus.FAIL, "Fail App");
		//testlog.log(LogStatus.SKIP, "Skip APP");
		//testlog.log(LogStatus.INFO, "Logout to APP");
		extent.endTest(testlog);
		
		FlightFinder1 ff = PageFactory.initElements(driver,FlightFinder1.class);
		        ff.flightfinder();
		SelectFlight sf = PageFactory.initElements(driver,SelectFlight.class);
		        sf.selectflight();
		BookFlight bf = PageFactory.initElements(driver,BookFlight.class);
		        bf.bookflight();        
	}

}
