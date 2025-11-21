*** Settings ***
Resource    ../variables/dev.robot

*** Keywords ***
Load Environment
    [Arguments]    ${env}=dev
    Log    Loaded environment: ${env}

