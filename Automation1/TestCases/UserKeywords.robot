*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/Resources.robot
*** Variables ***
${browser}  chrome
${url}  http://www.newtours.demoaut.com/
*** Test Cases ***
TC1
    ${PageTitle}=   LaunchBrowser   ${url}  ${browser}
    log to console  ${PageTitle}
    log  ${PageTitle}
    input text  name:userName   mercury
    input text  name:password   mercury
    close browser
*** Keywords ***
