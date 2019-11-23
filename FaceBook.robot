*** Settings ***
Library           SeleniumLibrary
Library           ExcelLibrary
Library           String

*** Test Cases ***
facebook
    Registration

*** Keywords ***
Registration
    Open Browser    https://facebook.com    gc
    Maximize Browser Window
    Sleep    2s
    Wait Until Element Is Visible    //input[@id='u_0_m']
    Input Text    //input[@id='u_0_m']    Anuj
    Wait Until Element Is Visible    //input[@id='u_0_o']
    Input Text    //input[@id='u_0_o']    Singh
    Wait Until Element Is Visible    //input[@id='u_0_r']
    Input Text    //input[@id='u_0_r']    kumarsingh.anuj143@gmail.com
    Wait Until Element Is Visible    //input[@id='u_0_u']
    Input Text    //input[@id='u_0_u']    kumarsingh.anuj143@gmail.com
    Wait Until Element Is Visible    //input[@id='u_0_w']
    Input Text    //input[@id='u_0_w']    Anuj_143
    Wait Until Element Is Visible    //select[@id='day']
    Select From List By Value    //select[@id='day']    15
    Wait Until Element Is Visible    //select[@id='month']
    Select From List By Value    //select[@id='month']    8
    Wait Until Element Is Visible    //select[@id='year']
    Select From List By Value    //select[@id='year']    1990
    Wait Until Element Is Visible    //input[@id='u_0_7']
    Click Element    //input[@id='u_0_7']
    Wait Until Element Is Visible    //div[@class='_1lch']//button[text()='Sign Up']
    Click Element    //div[@class='_1lch']//button[text()='Sign Up']
