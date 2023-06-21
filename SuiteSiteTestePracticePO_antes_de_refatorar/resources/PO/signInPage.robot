*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${BROWSER}               chrome
${HOME_URL}              http://automationpractice.com
${SIGNIN_EMAIL_FIELD}    id=email_create
${SIGNIN_BTN_SUBMIT}     id=SubmitCreate
*** Keywords ***


Informar um e-mail válido
    Wait Until Element Is Visible   ${SIGNIN_EMAIL_FIELD}
    ${EMAIL}                        Generate Random String
    Input Text                      ${SIGNIN_EMAIL_FIELD}    ${EMAIL}@testerobot.com

Clicar em "Create an account"
    Click Button    ${SIGNIN_BTN_SUBMIT}