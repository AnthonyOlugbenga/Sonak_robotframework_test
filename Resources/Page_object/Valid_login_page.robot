*** Settings ***

Library     SeleniumLibrary
Variables       ../../Resources/Locators/Element_locators.py


*** Keywords ***
Enter Username text field
    [Arguments]        ${username}
    Input text         ${textbox_username}    ${username}

Enter Password text field
    [Arguments]        ${password}
    Input text         ${textbox_password}    ${password}

Click Sign button
    Click element      ${button_login}

Verfy Success Login
    Page should contain     ${My_account}



