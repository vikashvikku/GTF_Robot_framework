*** Settings ***
Library     SeleniumLibrary
Library     OperatingSystem

*** Variables ***
${BROWSER}      chrome
${URL}      https://www.gettogetherfinance.com

*** Keywords ***
Launch Browser
    Append To Environment Variable      Path        ${EXECDIR}${/}driver
    Open Browser    browser= ${BROWSER}
    Maximize Browser Window
    Set Selenium Implicit Wait    30s
    Set Screenshot Directory    ${EXECDIR}${/}Screenshots
    Go To    url=https://www.gettogetherfinance.com