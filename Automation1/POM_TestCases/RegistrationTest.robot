*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Registration_Keywords.robot

*** Variables ***
${Browser}      headlesschrome
${SiteUrl}      http://www.newtours.demoaut.com/

*** Test Cases ***
Registration Test
    Open My Browser    ${SiteUrl}    ${Browser}
    Click Register Link
    Enter FirstName     siva
    Enter LastName      singu
    Enter Phone     9705360900
    Enter Email     sivanag123@gmail.com
    Enter Address1      SRS Siri Estate
    Enter Address2      Bachupally
    Enter City      Hyderabad
    Enter State     Telanagna
    Enter PostalCode    500090
    Enter Country       INDIA
    Enter UserName      sivas
    Enter Password      sivas
    Enter ConfromPassword      sivas
    Click Submit
    Verify Successful Registration
    Close the Browser

