*** Settings ***
Library    SeleniumLibrary
Library    String

*** Variables ***
${BROWSER}                       chrome
${HOME_URL}                      http://automationpractice.com
${FORM_TITLE}                    xpath=//*[@id="account-creation_form"]//h3[contains(text(),"Your personal information")]
${FORM_GENDER_MEN}               id=id_gender1 
${FORM_GENDER_WOMAN}             id=id_gender2
${FORM_FIRSTNAME}                id=customer_firstname
${FORM_LASTNAME}                 id=customer_lastname
${FORM_PASSWORD}                 id=passwd
${FORM_ADDRESS}                  id=address1
${FORM_CITY}                     id=city
${FORM_STATE}                    id=id_state
${FORM_POSTCODE}                 id=postcode
${FORM_PHONE}                    id=phone_mobile
${FORM_BTN_SUBMIT}               submitAccount
${FORM_SUCCESS_MESSAGE}          xpath=//*[@id="center_column"]/p
${FORM_SUCCESS_MESSAGE_NAME}     xpath=//*[@id="header"]/div[2]//div[1]/a/span


*** Keywords ***
Preencher os dados obrigatórios
    Wait Until Element Is Visible   ${FORM_TITLE}
    Click Element                   ${FORM_GENDER_WOMAN}
    Input Text                      ${FORM_FIRSTNAME}        May
    Input Text                      ${FORM_LASTNAME}         Fernandes
    Input Text                      ${FORM_PASSWORD}         123456
    Input Text                      ${FORM_ADDRESS}          Rua Framework, Bairro Robot
    Input Text                      ${FORM_CITY}             Floripa
    Set Focus To Element            ${FORM_STATE}
    ### No firefox ocorreu problema ao achar o listbox State, então coloquei um if para esperar
    ### pelo elemento quando for firefox
    Run Keyword If    '${BROWSER}'=='firefox'  Wait Until Element Is Visible   ${FORM_STATE}
    Select From List By Index       ${FORM_STATE}            9
    Input Text                      ${FORM_POSTCODE}         12345
    Input Text                      ${FORM_PHONE}            99988877

Submeter cadastro
    Click Button    ${FORM_BTN_SUBMIT}

#### Conferências
Conferir se o cadastro foi efetuado com sucesso
    Wait Until Element Is Visible    ${FORM_SUCCESS_MESSAGE}
    Element Text Should Be           ${FORM_SUCCESS_MESSAGE}
    ...    Welcome to your account. Here you can manage all of your personal information and orders.
    Element Text Should Be           ${FORM_SUCCESS_MESSAGE_NAME}    May Fernandes

