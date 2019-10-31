*** Settings ***
Library           SeleniumLibrary
Library           ExcelLibrary
Variables         VariableNew.py
Library           String

*** Variables ***
${username}       mercury
${password}       mercury
${FirstName}      Anuj
${LatName}        Singh
${cardNum}        1234567890
${DataFile}       C:\\Users\\singha1\\Desktop\\robotframework\\DataFile.xls

*** Test Cases ***
testcase1
    [Setup]    excel
    Loggin
    Booking
    SelectFlight
    BookFlight
    LogOut
    [Teardown]    CloseBrowser

Test
    [Setup]    excel
    Loggin
    Booking1
    [Teardown]

*** Keywords ***
Loggin
    [Documentation]    Lounch the Browser.
    ...    Login To Application.
    ...    Home Page Should be Display.
    ...    Fill the UserName & Password.
    ...    Click on Login Button.
    ...    Flight Booking Page Should be Display.
    ...    Select CheckBox of Ways.
    ...    Select the Passenger Count From the DropDown.
    ...    Select Departed from, Date, Day, Month.
    ...    Select Service Class.
    ...    Select Airline.
    ...    Click on Continue Button.
    ...    Select Flight Page Should be Display.
    Open Browser    http://www.newtours.demoaut.com    gc
    Sleep    2s
    Maximize Browser Window
    Wait Until Element Is Visible    &{OR}[HomePage_UserName]
    ${ExcelUserName}    Read Cell Data By Name    Sheet1    B1
    Input Text    &{OR}[HomePage_UserName]    ${ExcelUserName}
    Wait Until Element Is Visible    &{OR}[HomePage_Password]
    ${ExcelPassword}    Read Cell Data By Name    Sheet1    B2
    Input Text    &{OR}[HomePage_Password]    ${ExcelPassword}
    Wait Until Element Is Visible    &{OR}[Login_Click]
    Click Element    &{OR}[Login_Click]
    Capture Page Screenshot
    Sleep    2s

CloseBrowser
    Close All Browsers

Booking
    Wait Until Element Is Visible    &{OR}[One_Way]
    Click Element    &{OR}[One_Way]
    Mouse Over    &{OR}[Passenger_count]
    Click Element    &{OR}[Passenger_count]
    ${elements}    Get WebElements    &{OR}[Total_Passenger]
    log    ${elements}
    ${count}    Get Element Count    &{OR}[Total_Passenger]
    log    ${count}
    ${itr}    Set Variable    0
    : FOR    ${X}    IN    @{elements}
    \    Click Element    ${X}
    \    Capture Page Screenshot
    \    ${itr}    Evaluate    ${itr}+1
    \    Exit For Loop If    ${itr}==${count}
    Comment    ${passenger_count}    Read Cell Data By Name    Sheet1    B3
    Comment    Select From List By Value    &{OR}[Passenger_count]    ${passenger_count}
    Comment    Click Element    &{OR}[Total_Passenger]
    Click Element    &{OR}[Departing_From]
    ${elements}    Get WebElements    &{OR}[Total_Departing]
    log    ${elements}
    ${count}    Get Element Count    &{OR}[Total_Departing]
    log    ${count}
    ${itr}    Set Variable    0
    : FOR    ${X}    IN    @{elements}
    \    Click Element    ${X}
    \    Capture Page Screenshot
    \    ${itr}    Evaluate    ${itr}+1
    \    Exit For Loop If    ${itr}==${count}
    Comment    ${Departing_From}    Read Cell Data By Name    Sheet1    B4
    Comment    Select From List By Value    &{OR}[Departing_From]    ${Departing_From}
    Comment    Click Element    &{OR}[Total_Departing]
    Mouse Over    &{OR}[From_Month]
    Click Element    &{OR}[From_Month]
    ${elements}    Get WebElements    &{OR}[Toal_From_Month]
    log    ${elements}
    ${count}    Get Element Count    &{OR}[Toal_From_Month]
    log    ${count}
    ${itr}    Set Variable    0
    : FOR    ${X}    IN    @{elements}
    \    Click Element    ${X}
    \    Capture Page Screenshot
    \    ${itr}    Evaluate    ${itr}+1
    \    Exit For Loop If    ${itr}==${count}
    Comment    ${From_Month}    Read Cell Data By Name    Sheet1    B5
    Comment    Select From List By Value    &{OR}[From_Month]    ${From_Month}
    Comment    Click Element    &{OR}[Toal_From_Month]
    Mouse Over    &{OR}[From_Day]
    Click Element    &{OR}[From_Day]
    ${elements}    Get WebElements    //select[@name='fromDay']//option
    log    ${elements}
    ${count}    Get Element Count    //select[@name='fromDay']//option
    log    ${count}
    ${itr}    Set Variable    0
    : FOR    ${X}    IN    @{elements}
    \    Click Element    ${X}
    \    Capture Page Screenshot
    \    ${itr}    Evaluate    ${itr}+1
    \    Exit For Loop If    ${itr}==${count}
    Comment    ${From_Day}    Read Cell Data By Name    Sheet1    B6
    Comment    Select From List By Value    &{OR}[From_Day]    ${From_Day}
    Comment    Click Element    &{OR}[Total_Day]
    Mouse Over    &{OR}[To_Port]
    Click Element    &{OR}[To_Port]
    ${elements}    Get WebElements    //select[@name='toPort']//option
    log    ${elements}
    ${count}    Get Element Count    //select[@name='toPort']//option
    log    ${count}
    ${itr}    Set Variable    0
    : FOR    ${X}    IN    @{elements}
    \    Click Element    ${X}
    \    Capture Page Screenshot
    \    ${itr}    Evaluate    ${itr}+1
    \    Exit For Loop If    ${itr}==${count}
    Comment    ${To_Port}    Read Cell Data By Name    Sheet1    B7
    Comment    Select From List By Value    &{OR}[To_Port]    ${To_Port}
    Click Element    //select[@name='toPort']//option
    Mouse Over    &{OR}[To_Month]
    Click Element    &{OR}[To_Month]
    ${elements}    Get WebElements    //select[@name='toMonth']//option
    log    ${elements}
    ${count}    Get Element Count    //select[@name='toMonth']//option
    log    ${count}
    ${itr}    Set Variable    0
    : FOR    ${X}    IN    @{elements}
    \    Click Element    ${X}
    \    Capture Page Screenshot
    \    ${itr}    Evaluate    ${itr}+1
    \    Exit For Loop If    ${itr}==${count}
    Comment    ${To_Month}    Read Cell Data By Name    Sheet1    B8
    Comment    Select From List By Value    &{OR}[To_Month]    ${To_Month}
    Comment    Click Element    //select[@name='toMonth']//option
    Mouse Over    &{OR}[To_Day]
    Click Element    &{OR}[To_Day]
    ${elements}    Get WebElements    //select[@name='toDay']//option
    log    ${elements}
    ${count}    Get Element Count    //select[@name='toDay']//option
    log    ${count}
    ${itr}    Set Variable    0
    : FOR    ${X}    IN    @{elements}
    \    Click Element    ${X}
    \    Capture Page Screenshot
    \    ${itr}    Evaluate    ${itr}+1
    \    Exit For Loop If1s1    ${itr}==${count}
    Comment    ${To_Day}    Read Cell Data By Name    Sheet1    B9
    Comment    Select From List By Value    &{OR}[To_Day]    ${To_Day}
    Comment    Click Element    //select[@name='toDay']//option
    Wait Until Element Is Visible    &{OR}[Service_Class]
    Click Element    &{OR}[Service_Class]
    Mouse Over    &{OR}[AirLine]
    Click Element    &{OR}[AirLine]
    ${elements}    Get WebElements    //select[@name='airline']//option
    ${count}    Get Element Count    //select[@name='airline']//option
    log    ${count}
    ${itr}    Set Variable    0
    : FOR    ${X}    IN    @{elements}
    \    Click Element    ${X}
    \    Capture Page Screenshot
    \    ${itr}    Evaluate    ${itr}+1
    \    Exit For Loop If    ${itr}==${count}
    Comment    ${AirLine}    Read Cell Data By Name    Sheet1    B10
    Comment    Select From List    &{OR}[AirLine]    ${AirLine}
    Click Element    //select[@name='airline']//option
    Wait Until Element Is Visible    &{OR}[Continue]
    Click Element    &{OR}[Continue]
    Capture Page Screenshot
    Sleep    2s

SelectFlight
    Wait Until Element Is Visible    &{OR}[Depart]
    Click Element    &{OR}[Depart]
    Wait Until Element Is Visible    &{OR}[Return]
    Click Element    &{OR}[Return]
    Wait Until Element Is Visible    &{OR}[Continue_Return]
    Click Element    &{OR}[Continue_Return]
    Capture Page Screenshot
    Sleep    2s

BookFlight
    Wait Until Element Is Visible    &{OR}[First_Name]
    ${First_Name}    Read Cell Data By Name    Sheet1    B11
    Input Text    &{OR}[First_Name]    ${First_Name}
    Wait Until Element Is Visible    &{OR}[Last_Name]
    ${Last_Name}    Read Cell Data By Name    Sheet1    B12
    Input Text    &{OR}[Last_Name]    ${Last_Name}
    Comment    Mouse Over    &{OR}[Meal]
    Click Element    &{OR}[Meal]
    ${elements}    Get WebElements    &{OR}[Total_Meal]
    log    ${elements}
    ${count}    Get Element Count    &{OR}[Total_Meal]
    log    ${count}
    ${itr}    Set Variable    0
    : FOR    ${X}    IN    @{elements}
    \    Click Element    ${X}
    \    Capture Page Screenshot
    \    ${itr}    Evaluate    ${itr}+1
    \    Exit For Loop If    ${itr}==${count}
    Comment    ${Meal}    Read Cell Data By Name    Sheet1    B13
    Comment    Select From List By Value    &{OR}[Meal]    ${Meal}
    Comment    Click Element    &{OR}[Meal]
    Mouse Over    &{OR}[Card_Type]
    Click Element    &{OR}[Card_Type]
    ${Card_Type}    Read Cell Data By Name    Sheet1    B14
    Select From List By Value    &{OR}[Card_Type]    ${Card_Type}
    Click Element    &{OR}[Card_Type]
    Wait Until Element Is Visible    &{OR}[Card_No]
    ${Card_Number}    Read Cell Data By Name    Sheet1    B15
    Input Text    &{OR}[Card_No]    ${Card_Number}
    Mouse Over    &{OR}[Expiration]
    Click Element    &{OR}[Expiration]
    ${Expiration}    Read Cell Data By Name    Sheet1    B16
    Select From List    &{OR}[Expiration]    ${Expiration}
    Click Element    &{OR}[Expiration]
    Mouse Over    &{OR}[ExpirationYr]
    Click Element    &{OR}[ExpirationYr]
    ${ExpirationYr}    Read Cell Data By Name    Sheet1    B17
    Select From List    &{OR}[ExpirationYr]    ${ExpirationYr}
    Click Element    &{OR}[ExpirationYr]
    Wait Until Element Is Visible    &{OR}[first_name]
    ${first_name}    Read Cell Data By Name    Sheet1    B18
    Input Text    &{OR}[first_name]    ${first_name}
    Wait Until Element Is Visible    &{OR}[mid_name]
    ${mid_name}    Read Cell Data By Name    Sheet1    B19
    Input Text    &{OR}[mid_name]    ${mid_name}
    Wait Until Element Is Visible    &{OR}[last_name]
    ${last_name}    Read Cell Data By Name    Sheet1    B20
    Input Text    &{OR}[last_name]    ${last_name}
    Comment    Wait Until Element Is Visible    &{OR}[Ticketless_Travel]
    Comment    Click Element    &{OR}[Ticketless_Travel]
    Wait Until Element Is Visible    &{OR}[Address]
    ${Address}    Read Cell Data By Name    Sheet1    B21
    Input Text    &{OR}[Address]    ${Address}
    Wait Until Element Is Visible    &{OR}[address]
    ${address}    Read Cell Data By Name    Sheet1    B22
    Input Text    &{OR}[address]    ${address}
    Wait Until Element Is Visible    &{OR}[City]
    ${City}    Read Cell Data By Name    Sheet1    B23
    Input Text    &{OR}[City]    ${City}
    Wait Until Element Is Visible    &{OR}[State]
    ${State}    Read Cell Data By Name    Sheet1    B24
    Input Text    &{OR}[State]    ${State}
    Wait Until Element Is Visible    &{OR}[Postal_Code]
    ${Postal_Code}    Read Cell Data By Name    Sheet1    B25
    Input Text    &{OR}[Postal_Code]    ${Postal_Code}
    Mouse Over    &{OR}[Country]
    Click Element    &{OR}[Country]
    ${Country}    Read Cell Data By Name    Sheet1    B26
    Select From List By Value    &{OR}[Country]    ${Country}
    Sleep    3s
    Comment    Wait Until Element Is Visible    &{OR}[Same_As_Billing]
    Comment    Click Element    &{OR}[Same_As_Billing]
    Wait Until Element Is Visible    &{OR}[Secure_Purchase]
    Click Element    &{OR}[Secure_Purchase]
    Capture Page Screenshot
    Sleep    2s

LogOut
    Wait Until Element Is Visible    &{OR}[LogOut]
    Click Element    &{OR}[LogOut]
    Capture Page Screenshot
    Sleep    2s

excel
    ExcelLibrary.Open Excel    ${DataFile}

Booking1
    : FOR    ${I}    IN RANGE    2
    \    Exit For Loop If    ${I}==2
    \    Sleep    2s
    \    Click Element    xpath=//body//b//input[2]
    \    Sleep    2s
    \    Click Element    xpath=//select[@name='passCount']
    \    Sleep    1s
    \    ${var}    Evaluate    30+${i}
    \    ${var1}    Catenate    A    ${var}
    \    ${varfinal}    Replace String    ${var1}    ${SPACE}    ${EMPTY}
    \    ${No.ofPassenger}    Read Cell Data By Name    Sheet1    ${varfinal}
    \    Sleep    2s
    \    click element    xpath=//select[@name='passCount']//option[@value='${No.ofPassenger}'][contains(text(),'${No.ofPassenger}')]
    \    Sleep    1s
    \    Click Element    xpath=//select[@name='fromPort']
    \    Sleep    1s
    \    ${var}    Evaluate    30+${i}
    \    ${var1}    Catenate    B    ${var}
    \    ${varfinal}    Replace String    ${var1}    ${SPACE}    ${EMPTY}
    \    ${DepartingFrom}    Read Cell Data By Name    Sheet1    ${varfinal}
    \    click element    xpath=//select[@name='fromPort']//option[@value='${DepartingFrom}'][contains(text(),'${DepartingFrom}')]
    \    Sleep    2s
    \    Click Element    xpath=//select[@name='fromMonth']
    \    Sleep    1s
    \    ${var}    Evaluate    30+${i}
    \    ${var1}    Catenate    C    ${var}
    \    ${varfinal}    Replace String    ${var1}    ${SPACE}    ${EMPTY}
    \    ${fromMonth}    Read Cell Data By Name    Sheet1    ${varfinal}
    \    click element    xpath=//select[@name='fromMonth']//option[contains(text(),'${fromMonth}')]
    \    Sleep    1s
    \    Click Element    xpath=//select[@name='fromDay']
    \    Sleep    1s
    \    ${var}    Evaluate    30+${i}
    \    ${var1}    Catenate    D    ${var}
    \    ${varfinal}    Replace String    ${var1}    ${SPACE}    ${EMPTY}
    \    ${fromDay}    Read Cell Data By Name    Sheet1    ${varfinal}
    \    click element    xpath=//select[@name='fromDay']//option[@value='${fromDay}'][contains(text(),'${fromDay}')]
    \    Sleep    1s
    \    Click Element    xpath=//select[@name='toPort']
    \    Sleep    1s
    \    ${var}    Evaluate    30+${i}
    \    ${var1}    Catenate    E    ${var}
    \    ${varfinal}    Replace String    ${var1}    ${SPACE}    ${EMPTY}
    \    ${ToPort}    Read Cell Data By Name    Sheet1    ${varfinal}
    \    click element    xpath=//select[@name='toPort']//option[@value='${ToPort}'][contains(text(),'${ToPort}')]
    \    Sleep    1s
    \    Click Element    xpath=//select[@name='toMonth']
    \    Sleep    1s
    \    ${var}    Evaluate    30+${i}
    \    ${var1}    Catenate    F    ${var}
    \    ${varfinal}    Replace String    ${var1}    ${SPACE}    ${EMPTY}
    \    ${ToMonth}    Read Cell Data By Name    Sheet1    ${varfinal}
    \    click element    xpath=//select[@name='toMonth']//option[contains(text(),'${ToMonth}')]
    \    Sleep    1s
    \    Click Element    xpath=//select[@name='toDay']
    \    Sleep    1s
    \    ${var}    Evaluate    30+${i}
    \    ${var1}    Catenate    G    ${var}
    \    ${varfinal}    Replace String    ${var1}    ${SPACE}    ${EMPTY}
    \    ${ToDay}    Read Cell Data By Name    Sheet1    ${varfinal}
    \    click element    xpath=//select[@name='toDay']//option[@value='${ToDay}'][contains(text(),'${ToDay}')]
    \    Sleep    1s
    \    Wait Until Element Is Visible    &{OR}[Service_Class]
    \    Click Element    &{OR}[Service_Class]
    \    Sleep    2s
    \    Click Element    xpath=//select[@name='airline']
    \    Sleep    1s
    \    ${var}    Evaluate    30+${i}
    \    ${var1}    Catenate    H    ${var}
    \    ${varfinal}    Replace String    ${var1}    ${SPACE}    ${EMPTY}
    \    ${Airline}    Read Cell Data By Name    Sheet1    ${varfinal}
    \    click element    //option[contains(text(),'${Airline}')]
    \    Sleep    2s
    \    Click Element    &{OR}[Continue]
    \    Capture Page Screenshot
    \    sleep    2s
    \    CloseBrowser
    \    Loggin
