*** Settings ***
Resource    ../resources/environment.resource
Resource    ../resources/browser.resource
Resource    ../pages/SearchPage.resource
Resource    ../variables/dev.robot

Suite Setup      Load Environment
Test Setup    Open Browser To URL    ${BASE_URL}
Test Teardown    Run Keyword And Ignore Error    Close ABrowser

*** Test Cases ***
Verify Search Functionality
    [Tags]    search    smoke    regression
    Enter Search Query    Interstellar
    Submit Search
