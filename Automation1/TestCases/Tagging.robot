*** Settings ***

*** Test Cases ***
TC1 User Registration Test
    [Tags]  Regression
    log to console  This is user registration test
    log to console  User registration test is over

TC2 Login Test
    [Tags]  Smoke
    log to console  This is login test
    log to console  Login test is over

TC3 Change User Settings
    [Tags]  Regression
    log to console  This is change in user settings test
    log to console  Change user settings test is over

TC4 Logout Test
    [Tags]  Smoke
    log to console  This is logout Test
    log to console  Logout Test is Over

#robot --include=Smoke TestCases\Tagging.robot
#robot --include=Regression TestCases\Tagging.robot
#robot -i Smoke -i Regression TestCases\Tagging.robot
#robot -e Regression  TestCases\Tagging.robot
#robot -i Smoke -e Regression  TestCases\Tagging.robot

