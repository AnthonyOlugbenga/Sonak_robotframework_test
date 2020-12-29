*** Settings ***
Library     SeleniumLibrary
Variables       ../../Resources/Locators/Element_locators.py

*** Variables ***
${username}     sonak190uk@yahoo.com
${Url}   http://automationpractice.com/index.php?
${Browser}      firefox

*** Keywords ***
Launch browser
    [Documentation]     This test case to verify user can retrieve forgotten password
    [Arguments]      ${Url}      ${Browser}
    Open browser     ${Url}      ${Browser}
    Maximize browser window

Click in button to sign in
    Click element     ${link_sign_In}
    Click element       ${click_forgot_link}

Enter your email address
    [Arguments]       ${username}
    Input text      ${enter_email}     ${username}

Click forgot password button
    Click element       ${click_forgot_button}

Verification
    Page should contain     ${confirmation_message}
       sleep      2s
Close browser
    close all browsers


