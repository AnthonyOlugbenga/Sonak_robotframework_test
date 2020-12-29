*** Settings ***
Library     SeleniumLibrary
Documentation    Confirm user can retrieve forgotten password
Resource    ../Resources/Page_object/Keyword_Forgot_password.robot


*** Test Cases ***
Verify that user can retrieve forgotten password
    [Tags]    Functionality

    Launch browser       ${Url}     ${Browser}
    Click in button to sign in
    Enter your email address        ${username}
    Click forgot password button
    Verification
    Close browser

