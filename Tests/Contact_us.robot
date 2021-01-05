*** Settings ***
Library     SeleniumLibrary
Documentation    Suite description
Resource    ../Resources/Pages/Keyword_Contact_us.robot
Resource     ../Resources/Common.robot


Test Setup       Common.Launch the brower
Test Teardown        Common.Finish TestCase

*** Test Cases ***
Verify that user can use contact link
    [Documentation]    This test case verifies contact link
    [Tags]    Functionality

    Click Contact us
    Select message heading
    Enter text fields
    Click send button
    Success verification




