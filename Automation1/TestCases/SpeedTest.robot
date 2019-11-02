*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    ${speed}=   get selenium speed
    log to console  ${speed}
    open browser    ${url}  ${browser}
    #sleep  2
    set selenium speed  2 seconds
    maximize browser window
    select radio button  Gender    M
    input text  name:FirstName  Sivanaga
    input text  name:LastName   Singu
    input text  name:Email  sivanag123@gmail.com
    input text  name:Password   sivanag123
    input text  name:ConfirmPassword    sivanag123
    ${speed}=   get selenium speed
    log to console  ${speed}
    #click element  id:register-button



*** Keywords ***
