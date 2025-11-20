*** Settings ***
Library    SeleniumLibrary

*** Keywords ***
Open Browser To URL
    [Arguments]    ${url}    ${browser}
    Open Browser    ${url}    ${browser}
    Maximize Browser Window

Close Browser
    Close Browser
