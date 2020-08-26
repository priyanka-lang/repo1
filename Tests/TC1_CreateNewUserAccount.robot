*** Settings ***
Documentation     Verify that it is possible to create a new user account with valid email address and filling in all mandatory fields
Library  SeleniumLibrary
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/WebUtil.robot
Resource  ../Resources/testdata.robot
Resource  ../PageObjects/Actions/LandingPage.robot
Library  String
Test Setup  run keywords     Begin Web Test      Initiate Utility File
Test Teardown  End Web Test
#robot -d results --variable browser:chrome --variable url:http://automationpractice.com/index.php Tests/TC1_CreateNewUserAccount.robot

*** Test Cases ***
Create An Account Test
    [Documentation]  This is a test to verify that it is possible to create a new user account with valid email address and filling in all mandatory fields
    [Tags]  TC1  TCALL
    log  Executing Create An Account Test
    Goto Login Page
    Create An Account




