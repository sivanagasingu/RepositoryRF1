*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${loginurl}     https://admin-demo.nopcommerce.com/
${browser}      chrome
*** Keywords ***
Open my Browser
    open browser  ${loginurl}   ${browser}
    maximize browser window
Close Browsers
    close all browsers
Open Login Page
    go to  ${loginurl}
Input UN
    [Arguments]  ${username}
    input text  id:Email    ${username}
Input PW
    [Arguments]  ${pwd}
    input text  id:Password    ${pwd}
Click Login Button
    click element  xpath://input[@class='button-1 login-button']
Click Logout Button
    click link  Logout
Error Message should be visible
    page should contain  Login was unsuccessful
Dashboard page should be visible
    page should contain     Dashboard

