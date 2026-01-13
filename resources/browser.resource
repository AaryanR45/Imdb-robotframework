*** Settings ***
Library    SeleniumLibrary
Library    OperatingSystem

*** Keywords ***
Open Browser To URL
    [Arguments]    ${url}
    ${is_ci}=    Get Environment Variable    CI    default=false
    Run Keyword If    '${is_ci}' == 'true'
    ...    Open Browser    ${url}    headlesschrome
    ...    ELSE
    ...    Open Browser    ${url}    chrome
    Set Window Size    1920    1080

Close ABrowser
    Close Browser
