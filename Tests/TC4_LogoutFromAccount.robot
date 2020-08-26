*** Settings ***
Documentation     Verify logout from the WebShop
Library  SeleniumLibrary
Resource  ../Resources/CommonWeb.robot
Resource  ../Resources/WebUtil.robot
Resource  ../Resources/testdata.robot
Resource  ../PageObjects/Actions/LandingPage.robot
Library  String
Test Setup  run keywords     Begin Web Test      Initiate Utility File
Test Teardown  End Web Test
#robot -d results --variable browser:chrome --variable url:http://automationpractice.com/index.php Tests/TC4_LogoutFromAccount.robot

*** Test Cases ***
Logout From Account Test
    [Documentation]  This is a test to Verify logout from the WebShop
    [Tags]  TC4  TCALL
    log  Executing Verify logout from the WebShop Test
    Goto Login Page
    Login To Account
    Logout From Account


