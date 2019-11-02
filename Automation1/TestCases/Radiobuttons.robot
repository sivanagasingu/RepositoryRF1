*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://www.practiceselenium.com/practice-form.html

*** Test Cases ***
Testing Radio Buttons and Check Boxes
    open browser    ${url}  ${browser}
    maximize browser window
    set selenium speed  3seconds

    #Selection of Radio Buttons
    select radio button  sex    Female
    select radio button  exp    5

    #Selecting Check Boxes
    select checkbox  tea1
    select checkbox  tea2
    unselect checkbox  tea1


*** Keywords ***
