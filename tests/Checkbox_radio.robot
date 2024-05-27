*** Settings ***
Documentation            Suite de testes da feature de Checkbox e Radio Button
Resource       ../resource/Base.resource


Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***
Deve selecionar checkbox
    [Tags]    checkbox
    Acessa menu
    Click menu Check e Radio
    Checkpoint tela check box
    Clique Checkbox
    Escolha as opções do checkbox
    Checar se opções checkbox estão como checked


Deve selecionar Radio Button
    [Tags]    radio
    Acessa menu
    Click menu Check e Radio
    Checkpoint tela check box
    Clique Radio button
    Escolha as opções do radio button
    Checar se opções radio estão como checked

Deve atualizar o status do botão
    [Tags]    atualiza
    Acessa menu
    Click menu Check e Radio
    Checkpoint tela check box
    Clique Checkbox
    Checar se o status do botão atualiza