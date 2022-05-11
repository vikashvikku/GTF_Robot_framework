*** Settings ***
Documentation       This suite will handle valid credential
...       test -TC_OH_2
Library     DataDriver      file=../test_data/gtf_data.xlsx      sheet_name=Valid credential
Resource    ../Resource/Commonfunctionality.resource

Test Teardown       Close Browser
Test Setup      Launch Browser
Test Template   valid Credential

*** Test Cases ***
TC1


*** Keywords ***
valid Credential

    Click Element    link= Login
    [Arguments]     ${username}     ${password}     ${expected_value}
    Input Text    id=email    ${username}
    Input Password    id=password    ${password}
    Click Element    id=loginBtn
    Page Should Contain    ${expected_value}



