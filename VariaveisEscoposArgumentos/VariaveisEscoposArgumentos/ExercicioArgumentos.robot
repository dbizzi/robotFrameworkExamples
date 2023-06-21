*** Settings ***
Documentation   Exemplo de uso de variáveis como argumentos em Keywords
Library    String

*** Variable ***
&{PESSOA}       nome=Daniel   sobrenome=Bizzi

*** Test Cases ***
Caso de teste de exemplo 01
    Criar email customizado    ${PESSOA.nome}    ${PESSOA.sobrenome}
    ${emailCriado}    Set Variable    ${emailCriado}
    Log To Console    ${emailCriado}

*** Keywords ***
Criar email customizado
    [Arguments]     ${NOME_USUARIO}   ${SOBRENOME_USUARIO}
    ${palavraAleatorio}    Generate Random String    5    [LETTERS]
    Set Test Variable    ${emailCriado}    ${NOME_USUARIO}${SOBRENOME_USUARIO}${palavraAleatorio}@testerobot.com
    [Return]    ${emailCriado}
