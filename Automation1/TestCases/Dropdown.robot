*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Dropdowns and List Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  2seconds
    select from list by label  continents   Australia
    sleep  3
    select from list by index  continents   5
    select from list by label  selenium_commands    Switch Commands
    select from list by label  selenium_commands    WebElement Commands
    sleep  2
    unselect from list by label  selenium_commands  Switch Commands

*** Keywords ***
