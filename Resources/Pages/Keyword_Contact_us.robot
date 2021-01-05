*** Settings ***
Library     SeleniumLibrary
Variables       ../../Resources/Locators/Element_locators.py


*** Variables ***
${enter_email}       tony@gmail.com
${number}        009473
${message}     Exploring automation

*** Keywords ***
Click Contact us
     Click element       ${CONTACT_US_LINK}
Select message heading
     Select from list by index     ${SELECT_HEADING}     2
Enter text fields
    Input text      ${TEXT_EMAIL_ADDRESS}      ${enter_email}
    Input text      ${ORDER_REFERENCE}        ${number}
    Input text      ${ENTER_MESSAGE}        ${message}
Click send button
    Click element       ${CLICK_BUTTON}
Success verification
    Page should contain       Your message has been successfully sent to our team.




