*** Settings ***
Library     SeleniumLibrary
Documentation    Suite description
Variables       ../../Resources/Locators/Element_locators.py

*** Variables ***
${click_d_search_box}       //*[@id="search_query_top"]

*** Keywords ***
Open the browser
    Open browser     http://automationpractice.com/index.php?     firefox
    Maximize browser window
Click search box
    click element       ${click_d_search_box}
Input the search data
    Input text      ${enter_search_item}      Casual dress
Press search button
    Click element       ${press_search_button}
Select product from list
    Select from list by index   ${select_from_list}      5
    Click element       ${click_on_image}
    Sleep    5s
Click on image
    Click element       ${click_image}
    Click element       ${click_plus_sign}
Select requirement
    Select from list by index      ${select_size}       2
    Click element       ${click_colour}
    Click element       ${add_to_cart}
    Sleep  5s
Proceed to payment
    Click element       ${proceed_to_checkout}
    Click element       ${proceed}
    Input text      ${textbox_username}     sonak190uk@yahoo.com
    Input text      ${textbox_password}     Testing
    Click element      ${button_login}
Verify of page
    Page should contain     My account
    Click element       xpath:/html/body/div/div[2]/div/div[3]/div/form/p/button/span
    Click element       xpath:/html/body/div/div[2]/div/div[3]/div/div/form/p/a
    Click element       xpath:/html/body/div/div[1]/header/div[3]/div/div/div[3]/div/a
    Click link      Sign out
    Page should contain     Your shopping cart is empty.





