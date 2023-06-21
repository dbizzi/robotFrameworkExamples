*** Settings ***
Documentation   Exemplo de tipos de variáveis:Dicionario
*** Variable ***
#Tipo Lista (arrays) - separar itens com espaço duplo
&{MESESDOANO}    Janeiro=31   Fevereiro=28    Março=31    Abril=30    Maio=31    Junho=30    Julho=31    Agosto=31    Setembro=30    Outubro=31    Novembro=30    Dezembro=31

*** Test Cases ***
Caso de teste de exemplo 01
    Imprima os meses do ano

*** Keywords ***
Imprima os meses do ano

    # Lendo um item de uma Lista
    Log To Console    Janeiro = ${MESESDOANO.Janeiro}
    Log To Console    Fevereiro = ${MESESDOANO.Fevereiro}
    Log To Console    Março = ${MESESDOANO.Março}
    Log To Console    Abril = ${MESESDOANO.Abril}
    Log To Console    Maio = ${MESESDOANO.Maio}
    Log To Console    Junho = ${MESESDOANO.Junho}
    Log To Console    Julho = ${MESESDOANO.Julho}
    Log To Console    Agosto = ${MESESDOANO.Agosto}
    Log To Console    Setembro = ${MESESDOANO.Setembro}
    Log To Console    Outubro = ${MESESDOANO.Outubro}
    Log To Console    Novembro = ${MESESDOANO.Novembro}
    Log To Console    Dezembro = ${MESESDOANO.Dezembro}
