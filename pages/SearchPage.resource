*** Settings ***
Resource    ../resources/common.resource

*** Variables ***
${SEARCH_FIELD}    xpath=//input[@id='suggestion-search']

*** Keywords ***
Enter Search Query
    [Arguments]    ${movie}
    Wait Until Element Is Visible    ${SEARCH_FIELD}    10s
    Input Text Into    ${SEARCH_FIELD}    ${movie}

Submit Search
    Press Keys    ${SEARCH_FIELD}    ENTER


