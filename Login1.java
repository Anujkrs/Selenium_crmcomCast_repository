package com.objectrepositorylib;

import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;

public class Login1 {
	
	@FindBy(xpath="//input[@name='userName']")
	private WebElement userNameedt;
	@FindBy(xpath="//input[@name='password']")
	private WebElement passwordEdt;
	@FindBy(xpath="//input[@name='login']")
	private WebElement signinBtn;
	
	public WebElement getUserNameedt()
	{
		return userNameedt;
	}
	public WebElement getPasswordEdt()
	{
		return passwordEdt;
	}
	public WebElement getLoginBtn()
	{
		return signinBtn;
	}
	public void loginToApp(String username, String password)
	{
		userNameedt.sendKeys(username);
		passwordEdt.sendKeys(password);
		signinBtn.click();
	}

}
