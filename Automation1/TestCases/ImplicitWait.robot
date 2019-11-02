*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    open browser    ${url}  ${browser}
    maximize browser window
    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}
    set selenium implicit wait  10 seconds
    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}
    select radio button  Gender    M
    input text  name:FirstName1  Sivanaga
    input text  name:LastName   Singu
    input text  name:Email  sivanag123@gmail.com
    input text  name:Password   sivanag123
    input text  name:ConfirmPassword    sivanag123
    ${implicittime}=    get selenium implicit wait
    log to console  ${implicittime}

*** Keywords ***
