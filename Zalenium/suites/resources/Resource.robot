*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${BROWSER}      firefox

*** Keywords ***
#### Setup e Teardown
Abrir navegador
    Open Browser   about:blank   ${BROWSER}   remote_url=http://localhost:4444/wd/hub

Fechar navegador
    Close Browser
