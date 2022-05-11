*** Settings ***
Documentation       This suite will handle valid credential
...       test -TC_OH_5
Resource    ../Resource/Commonfunctionality.resource

Test Teardown       Close Browser
Test Setup      Launch Browser

*** Test Cases ***
TC1

    Click Element    link= Login
    Input Text    id=email    vikash99007730@gmail.com
    Input Password    id=password     Robot@07
    Click Element    id=loginBtn
    Click Element    link=Courses
    Click Element   name=add-to-cart
    Click Element    xpath=//span[text()='Buy Course']
    Click Element    link= Make Payment
    Input Text    id=CompanyName    Vikash
    Input Text    id=AdditionalInfo    Trading is Love
    Click Element    xpath=//button[@class='btn btn-primary']
