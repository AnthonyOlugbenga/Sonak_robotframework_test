*** Settings ***
Library     SeleniumLibrary
Resource    ../Resources/Page_object/Keyword_Data_driven.robot


*** Test Cases ***
Verify invalid login with wrong credentials
    [Template]      Login With Invalid Credentials To Return Error Message
    #username                #password       #error message
    tony19uk@yahoo.com        testing         Authentication failed
    tony190uk@yahoo.com       test            Invalid password
    tony190uk@yahoo.com       trend           Authentication failed
    ${EMPTY}                  testing         An email address required
    tony190uk@yahoo.com       ${EMPTY}        Password is required
    ${EMPTY}                  ${EMPTY}        An email address required



