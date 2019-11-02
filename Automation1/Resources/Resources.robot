*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Keywords ***
LaunchBrowser   #User Defined Keyword with argument
    [Arguments]  ${appurl}    ${appbrowser}
    open browser  ${appurl}    ${appbrowser}
    maximize browser window
    ${title}=   get title
    [Return]  ${title}