*** Settings ***
Documentation            Suite de testes da feature de Star Wars
Resource       ../resource/Base.resource


Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***

Deve fazer a mudança da lista
    Acessa menu
    Click menu Star Wars
    Checkpoint tela Star Wars
    Click lista 
    Deve mover o card

Deve verificar texto nos cards
    Acessa menu
    Click menu Star Wars
    Checkpoint tela Star Wars
    Click lista 
    Deve verificar o texto do card aberto

Verificar botão de adicionar mais personagens
    Acessa menu
    Click menu Star Wars
    Checkpoint tela Star Wars
    Click lista 
    Deve verificar se há mais personagens

Deve fazer uma busca especifica
    [Tags]    search 
    Acessa menu
    Click menu Star Wars
    Checkpoint tela Star Wars
    Click busca
    Deve fazer uma busca especifica

Deve fazer uma busca com mais de um resultado
    [Tags]    search 
    Acessa menu
    Click menu Star Wars
    Checkpoint tela Star Wars
    Click busca
    Deve fazer uma busca genérica trazendo mais de um resultado

Deve fazer uma busca sem trazer resultados
    [Tags]    search 
    Acessa menu
    Click menu Star Wars
    Checkpoint tela Star Wars
    Click busca
    Deve fazer uma busca sem resultados
