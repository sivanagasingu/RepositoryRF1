*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/Login_Resources.robot
Library  DataDriver     ../TestData/LoginData.xlsx  sheet_name=Sheet1
Suite Setup  Open my Browser
Suite Teardown  Close Browsers
Test Template  Invalid login
*** Test Cases ***
LoginTestwithExcel using ${username} and ${password}

*** Keywords ***
Invalid login
    [Arguments]  ${username}    ${password}
    Input UN    ${username}
    Input PW    ${password}
    click login button
    Error Message should be visible