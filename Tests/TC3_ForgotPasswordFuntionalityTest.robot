*** Settings ***
Documentation     Verify 'Forgot your password' functionality
Library  SeleniumLibrary
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/WebUtil.robot
Resource  ../Resources/testdata.robot
Resource  ../PageObjects/Actions/LandingPage.robot
Library  String
Test Setup  run keywords     Begin Web Test      Initiate Utility File
Test Teardown  End Web Test
#robot -d results --variable browser:chrome --variable url:http://automationpractice.com/index.php Tests/TC3_ForgotPasswordFuntionalityTest.robot

*** Test Cases ***
Create An Account Test
    [Documentation]  This is a test to Verify 'Forgot your password' functionality
    [Tags]  TC3  TCALL
    log  Executing Verify 'Forgot your password' functionality
    Goto Login Page
    Forgot Password




