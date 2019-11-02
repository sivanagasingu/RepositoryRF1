*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${browser}  chrome
${url}  http://demowebshop.tricentis.com/register

*** Test Cases ***
RegTest
    open browser    ${url}  ${browser}
    maximize browser window
    ${time}=    get selenium timeout
    log to console  ${time}
    set selenium timeout  10 seconds
    wait until page contains  Register      # 5 secs
    select radio button  Gender    M
    input text  name:FirstName  Sivanaga
    input text  name:LastName   Singu
    input text  name:Email  sivanag123@gmail.com
    input text  name:Password   sivanag123
    input text  name:ConfirmPassword    sivanag123

*** Keywords ***
