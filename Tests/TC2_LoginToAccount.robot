*** Settings ***
Documentation     Verify successful login to WebShop using valid login credentials
Library  SeleniumLibrary
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/WebUtil.robot
Resource  ../Resources/testdata.robot
Resource  ../PageObjects/Actions/LandingPage.robot
Library  String
Test Setup  run keywords     Begin Web Test      Initiate Utility File
Test Teardown  End Web Test
#robot -d results --variable browser:chrome --variable url:http://automationpractice.com/index.php Tests/TC2_LoginToAccount.robot

*** Test Cases ***
Login To Account Test
    [Documentation]  This is a test to Verify successful login to WebShop using valid login credentials
    [Tags]  TC2  TCALL
    log  Executing Create An Account Test
    Goto Login Page
    Login To Account


