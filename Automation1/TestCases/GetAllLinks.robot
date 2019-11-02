*** Settings ***
Library     SeleniumLibrary

*** Variables ***

*** Test Cases ***
GetAllLinksTest
    open browser    http://www.newtours.demoaut.com/  chrome
    maximize browser window
    ${AllLinksCount}=   get element count  xpath://a
    log to console  ${AllLinksCount}

    @{LinkItems}    CREATE LIST
    : FOR   ${i}  IN RANGE    1   ${AllLinksCount}+1
    \   ${LinkText}=    get text  xpath:(//a)[${i}]
    \   log to console  ${LinkText}


*** Keywords ***
