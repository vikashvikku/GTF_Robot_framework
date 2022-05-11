*** Settings ***
Documentation       This suite will handle valid credential
...       test -TC_OH_3
Library     DataDriver      file=../test_data/gtf_data.xlsx      sheet_name=invalid credential
Resource    ../Resource/Commonfunctionality.resource

Test Teardown       Close Browser
Test Setup      Launch Browser
Test Template   invalid Credential

*** Test Cases ***
TC1


*** Keywords ***
invalid Credential

    Click Element    link= Login
    [Arguments]     ${username}     ${password}     ${expected_error}
    Input Text    id=email    ${username}
    Input Password    id=password    ${password}
    Click Element    id=loginBtn
    Page Should Contain    ${expected_error}


