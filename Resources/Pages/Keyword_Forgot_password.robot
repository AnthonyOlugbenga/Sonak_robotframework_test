*** Settings ***
Library     SeleniumLibrary
Variables       ../../Resources/Locators/Element_locators.py

*** Variables ***
${username}     sonak190uk@yahoo.com

*** Keywords ***
Launch browser
    [Documentation]     This test case to verify user can retrieve forgotten password
    Open browser    ${URL}      ${BROWSER}
    Maximize browser window

Click On Button to Sign in
    Click element     ${LINK_SIGN_IN}
    Click element     ${CLICK_FORGOT_LINK}

Enter your email address
    [Arguments]     ${username}
    Input text      ${ENTER_EMAIL}     ${username}

Click forgot password button
    Click element    ${FORGOT_PASSWORD_BUTTON}
Verification of Alert Message
    Page should contain    ${CONFIRMATION_MESSAGE}
       sleep      2s

Click on T shirts button
    Click element   ${T_SHIRTS}
Click on chexbox to select price
    Select checkbox     id:layered_id_attribute_group_1
    Select checkbox     id:layered_id_attribute_group_2





Close browser
    close all browsers


