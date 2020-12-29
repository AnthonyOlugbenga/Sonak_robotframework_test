*** Settings ***
Library     SeleniumLibrary
Variables       ../../Resources/Locators/Element_locators.py



*** Keywords ***
Launch the brower
    [Arguments]      ${Url}      ${Browser}
    Open browser     ${Url}      ${Browser}
    Maximize browser window
Click Contact us
     Click element       ${link_contact_us}
Select message heading
     Select from list by index     ${select_heading}     2
Enter text fields
    Input text      ${text_email_address}      ${enter_text}
    Input text      ${enter_sequence}        009473
    Input text      ${enter_message}        Exploring automation
Click_send_button
    Click element       xpath:/html/body/div/div[2]/div/div[3]/div/form/fieldset/div[2]/button/span
Success_verification
    Page should contain       Your message has been successfully sent to our team.




