*** Settings ***
Library         SeleniumLibrary
Documentation       Basic functionality
Resource     ../Resources/Pages/Valid_login_page.robot
Resource     ../Resources/Common.robot

Test Setup      Common.Launch the brower
Test Teardown        Common.Finish TestCase

*** Variables ***


*** Test Cases ***
TC1: Verify that user can log in to the application successfully
    [Documentation]       This test cases verifies basic functionality
    [Tags]      Functional

    Click Sign In
    Enter Username text field        ${username}
    Enter Password text field        ${password}
    Click Sign button
    Verfy Success Login





