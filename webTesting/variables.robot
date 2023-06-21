*** Variables ***

${URL}    https://amazon.com.br
${logoAmazon}    //a[contains(@id,'nav-logo-sprites')]
${menuEletronicos}    //a[contains(@data-csa-c-content-id,'nav_cs_electronics')]
${titleEletronicos}    //title[contains(text(),'Eletrônicos e Tecnologia')]
${headerEletronicos}   //h1[contains(text(),'Eletrônicos e Tecnologia')]
${menuComputadoresEInformatica}     //div[contains(@class,'bxc-grid__container')]//a[contains(@aria-label,'Computadores e Informática')]
${headerComputadoresEInformatica}   //h1[contains(text(),'Computadores e Informática')]
${searchBox}    //div[contains(@class,'search')]//input[contains(@id,'twotabsearchtextbox')]
${searchButton}    //div[contains(@class,'search')]//input[contains(@id,'nav-search-submit-button')]
${produtoPesquisado}    //span[contains(@data-component-type,'s-search-results')]//span[contains(text(),'Xbox Series S')]