*** Settings ***
Library  SeleniumLibrary
Resource  ../Resources/Wait.robot
Library  String

*** Keywords ***
Initiate Utility File
    Set Random Numbers

Set Random Numbers
    ${RandomNumbers}=   Evaluate  random.randint(0, sys.maxsize)  random, sys
    Set global variable  ${RandomNumbers}

click_link_custom
    [Arguments]  ${custom_element}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${custom_element}
    Click Link  ${custom_element}

click_button_custom
    [Arguments]  ${custom_element}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${custom_element}
    Click Button  ${custom_element}

click_element_custom
    [Arguments]  ${custom_element}
    Run Keyword And Ignore Error    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${custom_element}
    Click Element  ${custom_element}

select_radio_button_custom
    [Arguments]  ${custom_element_name}     ${custom_value}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${custom_element_name}
    Select Radio Button  ${custom_element_name}     '${custom_value}'

assert_page_contains_text_custom
    [Arguments]  ${custom_expected_text}
    wait_until_keyword_succeeds_custom  wait_until_page_contains_text_custom   ${custom_expected_text}
    Page Should Contain     ${custom_expected_text}     limit=1

assert_page_contains_element_custom
    [Arguments]  ${custom_element}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${custom_element}
    Page Should Contain Element     ${custom_element}   limit=1

assert_page_contains_elements_custom
    [Arguments]  ${custom_element}  ${expected_elements}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${custom_element}
    Page Should Contain Element     ${custom_element}   limit=${expected_elements}

assert_page_should_not_contains_element_custom
    [Arguments]  ${custom_element}
    wait_until_keyword_succeeds_custom  page_should_not_contain_element_custom   ${custom_element}

page_should_not_contain_element_custom
    [Arguments]  ${custom_element}
    Page Should Not Contain Element     ${custom_element}    limit=1

assert_page_element_by_name_custom
    [Arguments]  ${custom_element}  ${custom_element_expected_name}
    assert_page_contains_element_custom     ${custom_element}
    ${captured_custom_element_text} =  get_element_attribute_innerText_custom  ${custom_element}
    assert_string_equals_custom     ${captured_custom_element_text}     ${custom_element_expected_name}

assert_page_elements_by_name_custom
    [Arguments]  ${custom_element}  ${custom_element_expected_name}     ${expected_elements}
    assert_page_contains_elements_custom     ${custom_element}  ${expected_elements}
    ${captured_custom_element_text} =  get_element_attribute_innerText_custom  ${custom_element}
    assert_string_equals_custom     ${captured_custom_element_text}     ${custom_element_expected_name}

input_text_custom
    [Arguments]  ${custom_element}    ${user_input}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${custom_element}
    clear_element_text_custom  ${custom_element}
    clear_element_text_custom  ${custom_element}
    Input Text  ${custom_element}  ${user_input}

clear_element_text_custom
    [Arguments]  ${custom_element}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${custom_element}
    Clear Element Text  ${custom_element}

press_keys_custom
    [Arguments]  ${custom_element}    ${user_input}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${custom_element}
    Press Keys  ${custom_element}  ${user_input}

select_from_list_by_label_custom
    [Arguments]  ${custom_element}     ${label}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${custom_element}
    Select From List By Label   ${custom_element}   ${label}

select_from_list_by_index_custom
    [Arguments]  ${custom_element}     ${index}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${custom_element}
    Select From List By Index   ${custom_element}   ${index}

get_element_text_custom
    [Arguments]  ${custom_element}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${custom_element}
    ${value_fetched} =   Get Text   ${custom_element}
    [Return]  ${value_fetched}

get_element_attribute_value_custom
    [Arguments]  ${custom_element}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${custom_element}
    ${value_fetched} =   Get Element Attribute   ${custom_element}  value
    [Return]  ${value_fetched}

get_List_Items_custom
    [Arguments]  ${custom_element}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${custom_element}
    ${value_fetched} =   Get List Items   ${custom_element}     value=false
    [Return]  ${value_fetched}

get_selected_list_value_custom
    [Arguments]  ${custom_element}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${custom_element}
    ${value_fetched} =   Get Selected List Value   ${custom_element}
    [Return]  ${value_fetched}
get_selected_list_label_custom
    [Arguments]  ${custom_element}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${custom_element}
    ${value_fetched} =   Get Selected List Label   ${custom_element}
    [Return]  ${value_fetched}

get_element_attribute_innerText_custom
    [Arguments]  ${custom_element}
    wait_until_keyword_succeeds_custom    wait_until_element_is_visible_custom   ${custom_element}
    ${innerText_fetched} =   Get Element Attribute   ${custom_element}  innerText
    [Return]  ${innerText_fetched}

assert_string_equals_custom
    [Arguments]  ${custom_string1}     ${custom_string2}
    ${custom_string1} =  trim_string_custom    ${custom_string1}
    ${custom_string2} =  trim_string_custom    ${custom_string2}
    Should Be Equal As Strings  ${custom_string1}  ${custom_string2}

trim_string_custom
    [Arguments]  ${custom_string}
    ${string_trimmed} =  Strip String   ${custom_string}
    [Return]  ${string_trimmed}

convert_string_to_lowercase_custom
    [Arguments]  ${custom_string}
    ${string_lowercase} =  Convert To Lowercase  ${custom_string}
    [Return]  ${string_lowercase}

upload_file_custom
    [Arguments]  ${locator}     ${filepath}
    wait_until_keyword_succeeds_custom  wait_until_element_is_enabled_custom   ${locator}
    Choose File  ${locator}     ${filepath}
    sleep  5

select_frame_custom
    [Arguments]  ${frame_locator}
    Select Frame  ${frame_locator}

unselect_frame_custom
    Unselect Frame

scroll_to_view_element_custom
    [Arguments]   ${custom_locator}
    wait_until_keyword_succeeds_custom     wait_until_element_is_visible_custom   ${custom_locator}
    Scroll Element Into View    ${custom_locator}

select_checkbox_custom
    [Arguments]  ${custom_element}
    wait_until_keyword_succeeds_custom     wait_until_element_is_visible_custom   ${custom_element}
    Select Checkbox  ${custom_element}

handle_alert_custom
    [Arguments]  ${custom_action}
    ${_action} =    convert_string_to_lowercase_custom      ${custom_action}
    Run Keyword And Ignore Error    Run Keyword If  '${_action}' == 'yes'     Handle Alert	ACCEPT  timeout=10 s
    Run Keyword And Ignore Error    Run Keyword If  get_selected_list_value_custom'${_action}' != 'yes'    Handle Alert	DISMISS

click_element_using_javascript_custom
    [Arguments]    ${custom_element}
    wait_until_keyword_succeeds_custom     wait_until_page_contains_element_custom   ${custom_element}
    ${custom_element_id} =  assign_id_to_element_custom     ${custom_element}
    Execute Javascript    window.document.getElementById('${custom_element_id}').click()

assign_id_to_element_custom
    [Arguments]    ${custom_element}
    ${random_num} =	Evaluate  random.randint(0, sys.maxsize)  random, sys
    Assign ID to Element    ${custom_element}      custom_id${random_num}
    [Return]  custom_id${random_num}

reload_page_custom
    Reload Page

hover_custom
    [Arguments]    ${custom_element}
     Mouse Over   ${custom_element}

table_header_should_contain_expected
    [Arguments]  ${table_locator}     ${expected_text}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom  ${table_locator}
    table header should contain  ${table_locator}    ${expected_text}
table_row_should_contain_expected
    [Arguments]  ${table_locator}     ${row_no}    ${expected_text}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${table_locator}
    table row should contain   ${table_locator}     ${row_no}    ${expected_text}
table_column_should_contain_expected
    [Arguments]  ${table_locator}     ${column_no}    ${expected_text}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${table_locator}
    table column should contain   ${table_locator}   ${column_no}   ${expected_text}
table_cell_should_contain_expected
    [Arguments]  ${table_locator}     ${row_no}    ${column_no}   ${expected_text}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${table_locator}
    table cell should contain  ${table_locator}     ${row_no}   ${column_no}  ${expected_text}
table_should_contain_expected
    [Arguments]  ${table_locator}     ${expected_text}
    wait_until_keyword_succeeds_custom  wait_until_element_is_visible_custom   ${table_locator}
    table should contain  ${table_locator}     ${expected_text}

are_page_elements_loaded_custom
    wait_until_page_elements_loads_custom
