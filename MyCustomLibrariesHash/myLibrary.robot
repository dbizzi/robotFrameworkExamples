*** Settings ***
Library         ./Libraries/HashLibrary/functionMath.py

*** Test Cases ***
Teste de Raiz Quadrada usando library Math
    ${inteiro}    Converter String "25" em Inteiro
    Executar raiz quadrada de ${inteiro}
    Retorna PI


*** Keywords ***
Executar raiz quadrada de ${x}
    ${resultado_raiz}   funcaoRaizQuadrada    ${x}
    Log To Console    ${\n}${resultado_raiz}${\n}

Retorna PI
    ${valorPi}   Funcao Pi
    Log To Console    ${\n}${valorPi}${\n}  

Converter String "${x}" em Inteiro
    ${inteiro}    Convert To Integer    ${x}
    [Return]  ${inteiro}  
    