*** Settings ***
Library     SeleniumLibrary
Documentation    Suite description
Resource    ../Resources/Page_object/Keyword_Contact_us.robot


*** Test Cases ***
Verify that user can use contact link
    [Documentation]    This test case verifies contact link
    [Tags]    Functionality

    Launch the brower       ${Url}      ${Browser}
    Click Contact us
    Select message heading
    Enter text fields
    Click send button
    Success verification




