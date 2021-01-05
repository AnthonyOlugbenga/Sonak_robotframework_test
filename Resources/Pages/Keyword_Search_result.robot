*** Settings ***
Library     SeleniumLibrary
Documentation    Suite description
Variables       ../../Resources/Locators/Element_locators.py

*** Variables ***

*** Keywords ***
Open the browser
    Open browser     http://automationpractice.com/index.php?     firefox
    Maximize browser window
Click search box
    Click Element       ${CLICK_SEARCH}
Input the search data
    Input Text    ${ENTER_SEARCHED_ITEM}   Casual dresses
Press search button
    Click Element    ${PRESS_SEARCH_BUTTON}
Select product from list
    Select from list by index   ${SELECT_FROM_LIST}      5
    Click element       ${CLICK_ON_IMAGE}
    Sleep    5s
Click on image
    Click element       ${click_image}
    Click element       ${click_plus_sign}
Select requirement
    Select From List By Value    xpath://select[@name="group_1"]    2
    #Select from list by index      ${select_size}       2
    Click Element     xpath://a[@name="Blue"]
    Click element       ${add_to_cart}
    Sleep  5s
Proceed to payment
    Click element       ${proceed_to_checkout}
    Click element       ${proceed}
    Input text      ${textbox_username}     sonak190uk@yahoo.com
    Input text      ${textbox_password}     Testing
    Click element      ${LOGIN_BUTTON}
Verify of page
    Page should contain     My account
    Click element       xpath:/html/body/div/div[2]/div/div[3]/div/form/p/button/span
    Click element       xpath:/html/body/div/div[2]/div/div[3]/div/div/form/p/a
    Click element       xpath:/html/body/div/div[1]/header/div[3]/div/div/div[3]/div/a
    Click link      Sign out
    Page should contain     Your shopping cart is empty.





