*** Settings ***
Documentation   Siga os seguintes passos: Declare uma variável do tipo lista com vários números , Crie uma keyword que percorra essa lista usando o FOR, Dentro do FOR, faça um bloco IF que imprima no Log a frase "Eu sou o número 5!" e "Eu sou o número 10!", ou seja, só pode imprimir quando o número atual da lista for 5 ou 10, Use o ELSE para imprimir no Log a frase "Eu não sou o número 5 e nem o 10!"

*** Variables ***

@{listaDeNumeros}    1    2    3    4    5    6    7    8    9    10

*** Test Case ***
Exemplo de For com IF
    Usando FOR com IF    @{listaDeNumeros}

*** Keywords ***
Usando FOR com IF
    [Arguments]    @{lista}
    Log To Console    ${\n}
    FOR    ${numero}    IN    @{lista}
        IF    ${numero} == 5 or ${numero} == 10
            Log To Console    Eu sou o número ${numero}!
        ELSE
            Log To Console    Eu não sou o número 5 e nem o 10!
        END
        
    END