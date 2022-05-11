*** Settings ***
Documentation       This suite will handle valid credential
...       test -TC_OH_4
Resource    ../Resource/Commonfunctionality.resource

Test Teardown       Close Browser
Test Setup      Launch Browser

*** Test Cases ***
TC1

    Click Element    link= Login
    Input Text    id=email    vikash99007730@gmail.com
    Input Password    id=password     Robot@07
    Click Element    id=loginBtn
    Mouse Over    link= Gallery
    Click Element    xpath=(//a[@class='nav-link '])[4]
    Click Element    link= WorkStation




