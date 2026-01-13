*** Settings ***
Resource    ../resources/common.resource


*** Keywords ***
Enter Search Query
    [Arguments]    ${movie}
    Wait Until Element Is Visible    xpath=//*[@id="__next"]/main    30s
    Wait Until Element Is Visible    xpath=//input[@id='suggestion-search']    20s
    Input Text    xpath=//input[@id='suggestion-search']    ${movie}

Submit Search
    Press Keys    xpath=//input[@id='suggestion-search']    ENTER