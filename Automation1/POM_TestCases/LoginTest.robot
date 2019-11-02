*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Login_Keywords.robot

*** Variables ***
${Browser}      headlesschrome
${SiteUrl}      http://www.newtours.demoaut.com/
${username}     mercury
${password}     mercury

*** Test Cases ***
LoginTest
    Open My Browser    ${SiteUrl}    ${Browser}
    Enter UserName  ${username}
    Enter Password  ${password}
    Click SignIn
    sleep  3 seconds
    Verify Successful Login
    Close the Browser



