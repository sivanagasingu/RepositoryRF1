*** Settings ***
Library  SeleniumLibrary
Variables  ../PageObjects/Locators.py

*** Keywords ***
Open My Browser
    [Arguments]  ${SiteUrl}     ${Browser}
    open browser  ${SiteUrl}    ${Browser}
    maximize browser window

Click Register Link
    click link     ${Link_Reg}

Enter FirstName
    [Arguments]  ${firstName}
    input text  ${txt_FirstName}   ${firstName}

Enter LastName
    [Arguments]  ${lastName}
    input text  ${txt_LastName}   ${lastName}

Enter Phone
    [Arguments]  ${phone}
    input text  ${txt_Phone}   ${phone}

Enter Email
    [Arguments]  ${email}
    input text  ${txt_Email}   ${email}

Enter Address1
    [Arguments]  ${address1}
    input text  ${txt_Address1}   ${address1}

Enter Address2
    [Arguments]  ${address2}
    input text  ${txt_Address2}   ${address2}

Enter City
    [Arguments]  ${city}
    input text  ${txt_City}   ${City}

Enter State
    [Arguments]  ${state}
    input text  ${txt_State_Province}   ${state}

Enter PostalCode
    [Arguments]  ${postalCode}
    input text  ${txt_PostalCode}   ${postalCode}

Enter Country
    [Arguments]  ${country}
    select from list by label  ${txt_Country}   ${country}

Enter UserName
    [Arguments]  ${username}
    input text  ${txt_UserName}   ${username}

Enter Password
    [Arguments]  ${password}
    input text  ${txt_loginPassword}   ${password}

Enter ConfromPassword
    [Arguments]  ${confirmpassword}
    input text  ${txt_Confirm_Password}   ${confirmpassword}

Click Submit
    click button  ${btn_Submit}

Verify Successful Registration
    page should contain  Thank you for registering.

Close the Browser
    close all browsers