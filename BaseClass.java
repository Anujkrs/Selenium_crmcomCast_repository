package com.genericlib;

import java.io.File;
import java.util.Date;
import java.util.concurrent.TimeUnit;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.chrome.ChromeDriver;
import org.openqa.selenium.firefox.FirefoxDriver;
import org.openqa.selenium.ie.InternetExplorerDriver;
import org.openqa.selenium.support.PageFactory;
import org.testng.Reporter;
import org.testng.annotations.AfterClass;
import org.testng.annotations.AfterMethod;
import org.testng.annotations.AfterSuite;
import org.testng.annotations.BeforeClass;
import org.testng.annotations.BeforeMethod;
import org.testng.annotations.BeforeSuite;

import com.objectrepositorylib.HomePage1;
import com.objectrepositorylib.Login1;
import com.relevantcodes.extentreports.ExtentReports;



public class BaseClass {
	
	public static WebDriver driver ; 
	public static ExtentReports extent;
	public Filelib fLib = new Filelib();
	@BeforeSuite
	public void configBS() {
		String currentDate = new Date().toString().replaceAll(" ", "_").replaceAll(":", "_");
		/* Configure extent Report */
		extent = new ExtentReports("./advanceReport/report_"+currentDate+".html");
		File configfilePath = new File("./extent-config.xml");
		extent.loadConfig(configfilePath);
		
	}
	@BeforeClass
	public void configBC() throws Throwable {
		Reporter.log("Step-1:===LOUNCH BROWSER=====",true);
		String BROWSERNAME =fLib.getPropertyValue("browser");
	  if(BROWSERNAME.equals("firefox")){  
		  driver= new FirefoxDriver();
	  }
	  else if(BROWSERNAME.equals("Chrome")) {
		  driver= new ChromeDriver();
	  }
	  else if(BROWSERNAME.equals("ie")) {
		  driver= new InternetExplorerDriver();
	  }

		driver.manage().window().maximize();
		 driver.manage().timeouts().implicitlyWait(40, TimeUnit.SECONDS);
		 
	}
	@BeforeMethod
	public void configBM() throws Throwable {
		Reporter.log("Step-2:======Login to app=====",true);
		/* read the data from properties File Via Libraaries */
		String URL =fLib.getPropertyValue("url");
		 String USER = fLib.getPropertyValue("username");
		 String PASSWORD = fLib.getPropertyValue("password");
		 driver.get(URL);
		 Login1 lp = PageFactory.initElements(driver, Login1.class);
		    lp.loginToApp(USER,PASSWORD);
		
	}
	@AfterMethod
	public void configAM() throws Throwable {
		Reporter.log("Step-4:======Logout to app=======",true);
		Thread.sleep(2000);
		HomePage1 hp = PageFactory.initElements(driver, HomePage1.class);
		    hp.logout();
	}
	@AfterClass
	public void configAC() {
		driver.close();
		
	}
	@AfterSuite
	public void configAS() {
		extent.flush();
		extent.close();
	}


}
