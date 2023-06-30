*** Settings ***
Library    SeleniumLibrary
Resource   C:\udemy\robotFramework\robotavancado\suites\variables.robot

*** Keywords ***
Abrir o navegador
    Open Browser    about:blank    ${BROWSER}    remote_url=http://192.168.5.10:4444/wd/hub
    Maximize Browser Window


Fechar o navegador
    Capture Page Screenshot
    Close Browser

Acessar a home page do site Amazon.com.br
    Go To    url=${URL}
    Wait Until Element Is Visible    locator=${searchBox}    timeout=10s

Entrar no menu "Eletronicos"
    Wait Until Element Is Visible    locator=${menuEletronicos}
    Click Element    locator=${menuEletronicos}
Verificar se aparece a frase "${headerPagina}"
    Wait Until Element Is Visible    locator=//h1[contains(text(),'${headerPagina}')]
Verificar se o título da página fica "${titulo}"
    Title Should Be    title=${titulo}
Verificar se aparece a categoria "${categoriaEletronicos}"
    Wait Until Element Is Visible    locator=//div[contains(@class,'bxc-grid__container')]//a[contains(@aria-label,'${categoriaEletronicos}')]

Digitar o nome de produto "${searchText}" no campo de pesquisa
    Wait Until Element Is Visible    locator=${searchBox}
    Input Text    locator=${searchBox}     text=${searchText}
Clicar no botão de pesquisa
    Wait Until Element Is Visible    locator=${searchButton}
    Click Element    locator=${searchButton}
Verificar o resultado da pesquisa se esta listando o produto "${produto}"
    Wait Until Element Is Visible    locator=//span[contains(@data-component-type,'s-search-results')]//span[contains(text(),'${produto}')]

Adicionar o produto "${produto}" no carrinho
    Click Element    locator=//span[contains(@data-component-type,'s-search-results')]//span[contains(text(),'${produto}')]
    Wait Until Element Is Visible    locator=//input[contains(@id,'add-to-cart-button')]
    Click Element    locator=//input[contains(@id,'add-to-cart-button')]

Verificar se o produto "${produto}" foi adicionado com sucesso
    Wait Until Element Is Visible    locator=//div//span[contains(text(),'Adicionado ao carrinho')]
    Click Element    locator=${logoAmazon}
    Wait Until Element Is Visible    locator=//a[contains(@href,'/cart')]
    Click Element    locator=//a[contains(@href,'/cart')]
    Wait Until Element Is Visible    locator=//h1[contains(text(),'Carrinho de compras')]
    Wait Until Element Is Visible    locator=//span[contains(@class, 'a-truncate-cut') and contains(text(), '${produto}')]

Remover o produto "${produto}" do carrinho
    Wait Until Element Is Visible    locator=//a[contains(@href,'/cart')]
    Click Element    locator=//a[contains(@href,'/cart')]
    Wait Until Element Is Visible    locator=//input[contains(@aria-label,'Excluir ${produto}')]
    Click Element    locator=//input[contains(@aria-label,'Excluir ${produto}')]

Verificar se o carrinho fica vazio
    Wait Until Element Is Visible    locator=//a[contains(@id,'nav-cart')]
    Click Element    locator=//a[contains(@id,'nav-cart')]
    Wait Until Element Is Visible    locator=//h2[contains(text(),'Seu carrinho da Amazon está vazio')]
# GHERKIN STEPS

Dado que estou na home page da Amazon.com.br
    Acessar a home page do site Amazon.com.br

Quando acessar o menu "Eletrônicos"
    Entrar no menu "Eletronicos"

Então o título da página deve ficar "Eletrônicos e Tecnologia | Amazon.com.br"
    Verificar se aparece a frase "Eletrônicos e Tecnologia"

E o texto "Eletrônicos e Tecnologia" deve ser exibido na página
    Verificar se o título da página fica "Eletrônicos e Tecnologia | Amazon.com.br"

E a categoria "Computadores e Informática" deve ser exibida na página
    Verificar se aparece a categoria "Computadores e Informática"

Quando pesquisar pelo produto "Xbox Series S"
    Digitar o nome de produto "Xbox Series S" no campo de pesquisa
Então o título da página deve ficar "Amazon.com.br : Xbox Series S"
    Clicar no botão de pesquisa
E um produto da linha "Xbox Series S" deve ser mostrado na página
    Verificar o resultado da pesquisa se esta listando o produto "Xbox Series S"

Quando adicionar o produto "${produto}" no carrinho
    Quando pesquisar pelo produto "Xbox Series S"
    Clicar no botão de pesquisa
    Verificar o resultado da pesquisa se esta listando o produto "Xbox Series S"
    Adicionar o produto "${produto}" no carrinho
Então o produto "${produto}" deve ser mostrado no carrinho
    Verificar se o produto "${produto}" foi adicionado com sucesso

E existe o produto "${produto}" no carrinho
    Quando adicionar o produto "${produto}" no carrinho
    Então o produto "${produto}" deve ser mostrado no carrinho
Quando remover o produto "${produto}" do carrinho
    Remover o produto "${produto}" do carrinho
Então o carrinho deve ficar vazio
    Verificar se o carrinho fica vazio