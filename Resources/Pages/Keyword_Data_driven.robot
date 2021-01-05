*** Settings ***
Library     SeleniumLibrary

Variables       ../../Resources/Locators/Element_locators.py

*** Variables ***

*** Keywords ***
Login With Invalid Credentials To Return Error Message
    [Arguments]            ${user_email}        ${user_password}     ${error_message}
    Open browser           ${URL}               ${Browser}
    Maximize browser window
    Click element          ${LINK_SIGN_IN}
    Input text             ${TEXTBOX_USERNAME}      ${user_email}
    Input text             ${TEXTBOX_PASSWORD}     ${user_password}
    Click element          ${LOGIN_BUTTON}
    Page Should Contain    ${error_message}