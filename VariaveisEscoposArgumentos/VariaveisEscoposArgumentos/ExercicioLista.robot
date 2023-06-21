*** Settings ***
Documentation   Exemplo de tipos de variáveis:LISTA
*** Variable ***
#Tipo Lista (arrays) - separar itens com espaço duplo
@{MESESDOANO}    Janeiro   Fevereiro    Março    Abril    Maio    Junho    Julho    Agosto    Setembro    Outubro    Novembro    Dezembro

*** Test Cases ***
Caso de teste de exemplo 01
    Imprima os meses do ano

*** Keywords ***
Imprima os meses do ano

    # Lendo um item de uma Lista
    Log To Console    ${MESESDOANO[0]}
    Log To Console    ${MESESDOANO[1]}
    Log To Console    ${MESESDOANO[2]}
    Log To Console    ${MESESDOANO[3]}
    Log To Console    ${MESESDOANO[4]}
    Log To Console    ${MESESDOANO[5]}
    Log To Console    ${MESESDOANO[6]}
    Log To Console    ${MESESDOANO[7]}
    Log To Console    ${MESESDOANO[8]}
    Log To Console    ${MESESDOANO[9]}
    Log To Console    ${MESESDOANO[10]}
    Log To Console    ${MESESDOANO[11]}
