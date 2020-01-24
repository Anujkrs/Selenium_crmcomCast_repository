package com.genericlib;

import java.io.File;
import java.io.IOException;

import org.apache.commons.io.FileUtils;
import org.openqa.selenium.OutputType;
import org.openqa.selenium.support.events.EventFiringWebDriver;
import org.testng.ITestContext;
import org.testng.ITestListener;
import org.testng.ITestResult;



public class Listenerimp implements ITestListener {

	public void onFinish(ITestContext arg0) {
		// TODO Auto-generated method stub
		
	}

	public void onStart(ITestContext arg0) {
		// TODO Auto-generated method stub
		
	}

	public void onTestFailedButWithinSuccessPercentage(ITestResult arg0) {
		// TODO Auto-generated method stub
		
	}

	public void onTestFailure(ITestResult r) {
		
		String failedTestName = r.getMethod().getMethodName();
		// Screen Shot Program
		EventFiringWebDriver eDriver = new EventFiringWebDriver(BaseClass.driver);
		File ScrcImg = eDriver.getScreenshotAs(OutputType.FILE);
		File dstImg = new File("./screenshoot/"+failedTestName+".png");
		try
		{
	    FileUtils.copyFile(ScrcImg, dstImg);	
		}
		catch(IOException e) {
			
		}
	
		
		
	}

	public void onTestSkipped(ITestResult arg0) {
		// TODO Auto-generated method stub
		
	}

	public void onTestStart(ITestResult arg0) {
		// TODO Auto-generated method stub
		
	}

	public void onTestSuccess(ITestResult arg0) {
		// TODO Auto-generated method stub
		
	}

}
