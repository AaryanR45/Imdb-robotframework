*** Keywords ***
Load Environment
    [Arguments]    ${env}
    ${path}=    Set Variable    ../variables/${env}.yaml
    Import Variables    ${path}
