*** Settings ***
Library     SeleniumLibrary
Resource  ../Resources/Login_Resources.robot
Suite Setup  Open my Browser
Suite Teardown  Close Browsers
Test Template  Invalid login

*** Test Cases ***
Right user empty password   admin@yourstore.com     ${EMPTY}
Right user wrong password   admin@yourstore.com     xyz
Wrong user right password   admin1@yourstore.com    admin
Wrong user empty password   admin1@yourstore.com    ${EMPTY}
Wrong user wrong password   admin1@yourstore.com    xyzs



*** Keywords ***
Invalid login
    [Arguments]  ${username}    ${password}
    Input UN  ${username}
    Input PW  ${password}
    click login button
    Error Message should be visible
