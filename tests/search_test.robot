*** Settings ***
Resource    ../resources/environment.resource
Resource    ../resources/browser.resource
Resource    ../pages/SearchPage.resource

Suite Setup      Load Environment    dev
Test Setup       Open Browser To URL    ${BASE_URL}    ${BROWSER}
Test Teardown    Run Keyword And Ignore Error    Close Browser


*** Test Cases ***
Verify Search Functionality
    [Tags]    search    smoke
    Enter Search Query    Interstellar
    Submit Search
