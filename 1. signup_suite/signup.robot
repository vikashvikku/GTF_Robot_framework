*** Settings ***
Documentation       This suite will handle valid credential
...       test -TC_OH_1
Resource    ../Resource/Commonfunctionality.resource

Test Teardown       Close Browser
Test Setup      Launch Browser

*** Test Cases ***
TC1
      Click Element    link= Login
      Click Element    link= New User ?
      Input Text    id=Firstname    Vikash
      Input Text    id=Lastname    Kumar
      Input Text    id=email    vikash99007730@gmail.com
      Input Password    id=password     Robot@07
      Input Password    id=ConfirmPassword    Robot@07
      Input Text    id=CompanyName    Vikash
      Input Text    id=Address    Mysore
      Input Text    id=Pincode    570001
      Select From List By Label    name=Country     India
      Select From List By Label    name=State       Bihar
      Select From List By Label    name=City        Gaya
      Select From List By Label    name=Gender      Male
      Input Text    id=Phone    9934444444
      Input Text    name=DOB    02
      Input Text    name=DOB    03
      Input Text    name=DOB    2000
      Select From List By Label    id=find_us_other_click       Telegram
      Click Element    xpath=//button[@class='btn btn-primary']






