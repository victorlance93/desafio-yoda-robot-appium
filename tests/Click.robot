*** Settings ***
Documentation            Suite de testes da feature de Cliques
Resource       ../resource/Base.resource


Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***
Teste click simples
    [Tags]    click_simples
    Acessa menu 
    Click menu clique 
    Deve fazer um click simples

Teste click longo
    [Tags]    click_longo
    Acessa menu
    Click menu clique 
    Deve fazer um clique longo
    
   