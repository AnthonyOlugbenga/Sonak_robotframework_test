*** Settings ***
Library     SeleniumLibrary

Variables       ../../Resources/Locators/Element_locators.py

*** Variables ***

*** Keywords ***
Login With Invalid Credentials To Return Error Message
    [Arguments]            ${user_email}        ${user_password}     ${error_message}
    Open browser           ${URL}               ${Browser}
    Maximize browser window
    Click element          ${link_sign_in}
    Input text             ${email_address}      ${user_email}
    Input text             ${enter_password}     ${user_password}
    Click element          ${login_button}
    Page Should Contain    ${error_message}