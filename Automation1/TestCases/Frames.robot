*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
TestingInputBox
    open browser    https://seleniumhq.github.io/selenium/docs/api/java/  chrome
    maximize browser window
    select frame  packageListFrame
    click link  org.openqa.selenium
    unselect frame
    sleep  3
    select frame  packageFrame
    click link  WebDriver
    unselect frame
    sleep  3
    select frame  classFrame
    click link  Help
    unselect frame
    sleep  3
    close browser

*** Keywords ***
