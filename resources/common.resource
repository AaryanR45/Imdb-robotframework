*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Input Text Into
    [Arguments]    ${locator}    ${text}
    Input Text    ${locator}    ${text}

