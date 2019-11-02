*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]  ${SiteUrl}     ${Browser}
    open browser  ${SiteUrl}    ${Browser}
    maximize browser window
Enter UserName
    [Arguments]  ${username}
    input text  ${txt_loginUserName}   ${username}

Enter Password
    [Arguments]  ${password}
    input text  ${txt_loginPassword}   ${password}

Click SignIn
    click button  ${btn_signIn}

Verify Successful Login
    title should be     Find a Flight: Mercury Tours:

Close the Browser
    close all browsers