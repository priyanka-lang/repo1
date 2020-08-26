*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/testdata.robot
Resource  ../Resources/WebUtil.robot

*** Keywords ***
set_timeout_custom
    [Arguments]  ${timeout}
    set selenium timeout    ${timeout}

wait_until_page_elements_loads_custom
    Wait Until Keyword Succeeds   12x    10 sec   Wait For Condition   return jQuery.active == 0

wait_until_homepage_contains_text_custom
    [Arguments]  ${custom_element}
    wait_until_keyword_succeeds_custom  wait until page contains    ${custom_element}

wait_until_page_contains_text_custom
    [Arguments]  ${custom_element}
    wait_until_keyword_succeeds_custom  wait until page contains    ${custom_element}

wait_until_page_contains_element_custom
    [Arguments]  ${custom_element}
    wait_until_keyword_succeeds_custom  wait until page contains element   ${custom_element}

wait_until_element_is_visible_custom
    [Arguments]  ${custom_element}
    wait_until_keyword_succeeds_custom  Wait Until Element Is Visible   ${custom_element}

wait_until_element_is_enabled_custom
    [Arguments]  ${custom_element}
    wait_until_keyword_succeeds_custom  Wait Until Element Is Enabled   ${custom_element}

wait_until_keyword_succeeds_custom
    [Arguments]  ${custom_keyword}  ${custom_element}
    Run Keyword And Ignore Error    Wait Until Keyword Succeeds   3x    5 sec   ${custom_keyword}   ${custom_element}
