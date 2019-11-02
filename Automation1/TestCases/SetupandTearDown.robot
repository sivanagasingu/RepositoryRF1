*** Settings ***
Suite Setup  log to console      Opening Browser
Suite Teardown  log to console   Closing Browser

Test Setup  log to console      Login to Application
Test Teardown  log to console   Logout from Application

*** Test Cases ***
TC1 Prepaid Recharge
    log to console  This is prepaid recharge testcase

TC2 Postpaid Recharge
    log to console  This is postpaid recharge testcase

TC3 Search
    log to console  This is search testcase

TC4 Advanced Search
    log to console  This is a advanced search testcase



