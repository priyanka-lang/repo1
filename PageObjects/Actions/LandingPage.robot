*** Settings ***
Library  SeleniumLibrary
Resource   ../../Resources/Wait.robot
Resource   ../../Resources/WebUtil.robot
Variables  ../Locators/LandingPageElements.py

*** Variables ***
${PageLoadCondition_LandingPage}=  Sign in
*** Keywords ***
CreateLeadPage Verify Page Load Condition
    [Arguments]  ${timeout}
    set_timeout_custom  ${timeout}
    wait_until_page_contains_text_custom    ${PageLoadCondition_LandingPage}

Goto Login Page
    click_link_custom   ${oLinkSignIn}

Create An Account

    input_text_custom    ${oRegisterEmailAddress}  maria${RandomNumbers}@mailinator.com
    click_element_custom    ${oCreateAnAccount}
    assert_page_contains_text_custom    CREATE AN ACCOUNT
    assert_page_contains_text_custom    YOUR PERSONAL INFORMATION
    input_text_custom    ${oFirstName}  Maria${RandomNumbers}
    input_text_custom    ${oLastName}   Hernandez
    input_text_custom    ${oPassword}   Mariadez${RandomNumbers}
    select_from_list_by_index_custom    ${oDate}    0
    select_from_list_by_index_custom    ${oMonth}    0
    select_from_list_by_index_custom    ${oYear}    10
    input_text_custom    ${oCompany}   Walmart
    input_text_custom    ${oAddress}   280 Washington Street abc
    select_from_list_by_index_custom    ${oState}    0
    input_text_custom    ${oPostalCode}  12345
    input_text_custom    ${oMobilePhone}   1234567891
    click_element_custom    ${oRegister}
    assert_page_contains_text_custom     MY ACCOUNT
    assert_page_contains_text_custom    Welcome to your account

Login To Account
    input_text_custom    ${oLoginEmailAddress}  maria@mailinator.com
    input_text_custom    ${oLoginPassword}  mariadez
    click_element_custom    ${oSignIn}
    assert_page_contains_text_custom    Welcome to your account
Logout From Account
    click_element_custom    ${oLogout}
    assert_page_contains_element_custom  ${oLinkSignIn}
Forgot Password
     click_element_custom  ${oForgotPassword}
     input_text_custom    ${oRetrivePasswordfromEmail}  maria@mailinator.com
     click_element_custom    ${oRetrivePassword}
     assert_page_contains_text_custom     A confirmation email has been sent to your address











