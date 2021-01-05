*** Settings ***
Library     SeleniumLibrary


*** Keywords ***
Launch the brower
    Open browser     ${URL}      ${BROWSER}

Click Sign In
    Click element     ${LINK_SIGN_IN}

Finish TestCase
    close all browsers