*** Settings ***
Resource    ../resources/common.resource

*** Variables ***
${SEARCH_FIELD}    xpath=//input[@id='suggestion-search']

*** Keywords ***
Enter Search Query
    [Arguments]    ${movie}
    Input Text Into    ${SEARCH_FIELD}    ${movie}

Submit Search
    Press Keys    ${SEARCH_FIELD}    ENTER


