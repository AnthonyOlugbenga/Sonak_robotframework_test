*** Settings ***

Library     SeleniumLibrary
Variables       ../../Resources/Locators/Element_locators.py


*** Variables ***
${username}     tony190uk@yahoo.com
${password}     testing

*** Keywords ***
Enter Username text field
    [Arguments]        ${username}
    Input text         ${TEXTBOX_USERNAME}    ${username}
Enter Password text field
    [Arguments]        ${password}
    Input text         ${TEXTBOX_PASSWORD}    ${password}
Click Sign button
    Click element      ${LOGIN_BUTTON}
Verfy Success Login
    Page should contain     ${MY_ACCOUNT}



