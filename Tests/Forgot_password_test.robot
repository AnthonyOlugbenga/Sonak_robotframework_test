*** Settings ***
Library     SeleniumLibrary
Documentation    Confirm user can retrieve forgotten password
Resource    ../Resources/Pages/Keyword_Forgot_password.robot


*** Test Cases ***
Verify that user can retrieve forgotten password
    [Tags]    Functionality

    Launch browser
    Click On Button to Sign in
    Enter your email address        ${username}
    Click forgot password button
    Verification of Alert Message


Verify user can select T-shirts
    Click on T shirts button
    Click on chexbox to select price
    Close browser
