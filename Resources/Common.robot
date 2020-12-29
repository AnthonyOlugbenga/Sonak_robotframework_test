*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Launch the brower
    [Arguments]      ${Url}      ${Browser}
    Open browser     ${Url}      ${Browser}

Click Sign In
    Click element     ${link_sign_in}

Finish TestCase
    close all browsers