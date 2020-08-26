*** Settings ***
Library  SeleniumLibrary
Library  ../Resources/BrowserOptions.py
Resource  ../Resources/DriverManager.robot
Resource  ../Resources/testdata.robot
Resource  ../Resources/WebUtil.robot
Resource  ../Resources/CommonActions.robot
Library  Collections
#Library  webdriver_manager

*** Variables ***
${RandomNumber}=   null

*** Keywords ***
Begin Web Test
    ${RandomNumber}=   Evaluate  random.randint(0, sys.maxsize)  random, sys
    log  Starting Test Execution - browser=${browser} url=${url}
    Run keyword if  '${browser}' == 'firefox'   Set FirefoxDrivePath
    Run keyword if  '${browser}' == 'chrome'    Set ChromeDriverPath

    log   ${driver_path}
    Create Webdriver    ${_browser}   executable_path=${driver_path}
    Go To   ${url}

Set ChromeDriverPath
    ${driver_path}=   BrowserOptions.get_chromedriver_path
    Set global variable     ${driver_path}
    Set global variable     ${_browser}     Chrome

Set FirefoxDrivePath
    ${driver_path}=   BrowserOptions.get_firefoxdriver_path
    Set global variable     ${driver_path}
    Set global variable     ${_browser}     Firefox

End Web Test
    Run Keyword And Ignore Error  Close All Browsers
