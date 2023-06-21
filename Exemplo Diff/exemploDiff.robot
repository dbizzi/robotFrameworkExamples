*** Settings ***
Library    DiffLibrary

*** Variables ***
${arquivo1}    Exemplo Diff/arquivodiff.txt
${arquivo2}    Exemplo Diff/arquivodiff2.txt

*** Test Cases ***
Utilisando Diff Library
    Keyword Diff    ${arquivo1}    ${arquivo2}


*** Keywords ***
Keyword Diff
...    [Arguments]    ${file1}    ${file2}
    ${resposta}    Run Keyword And Ignore Error    Diff Files    ${file1}    ${file2}
    
    IF    '${resposta}[1]'=='None'
        Log To Console    ${\n}ARQUIVOS IDENTICOS
    ELSE
        Log To Console    ${\n}ARQUIVOS DIFERENTES ${\n} ${resposta}[1]
    END
    
    
    