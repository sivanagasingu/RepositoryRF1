*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
HandlingAlerts
    open browser    http://testautomationpractice.blogspot.com/  chrome
    maximize browser window
    click element  xpath://button[contains(text(),'Click Me')]
    sleep  3
    #handle alert  ACCEPT
    #handle alert  dismiss
    #handle alert  leave
    alert should be present  Press a button!






*** Keywords ***
