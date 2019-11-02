*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
LoginTC
    open browser    https://opensource-demo.orangehrmlive.com/  chrome
    maximize browser window
    input text  id:txtUsername  Admin
    input text  id:txtPassword  admin123
    capture element screenshot  xpath://*[@id="divLogo"]/img    F:/RobotFramework/Automation1/ElementLogo.png
    capture page screenshot     F:/RobotFramework/Automation1/LoginTC.png
    #capture element screenshot  xpath://*[@id="divLogo"]/img   ElementLogo.png
    #capture page screenshot     LoginTC.png




*** Keywords ***
