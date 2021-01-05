*** Settings ***
Library     SeleniumLibrary
Documentation    Suite description
Resource     ../Resources/Pages/Keyword_Search_result.robot



*** Test Cases ***
Verify that user can search for product of choice
    [Tags]    Functionality

    Open the browser
    Click search box
    Input the search data
    Press search button
    Select product from list
    Click on image
    Select requirement
    Proceed to payment
    Verify of page








