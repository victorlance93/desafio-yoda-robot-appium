*** Settings ***
Documentation            Suite de testes da feature de Dialogs
Resource       ../resource/Base.resource


Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***
Deve checar Dialog
    Acessa menu
    Click menu Dialogs
    Checkpoint tela dialogs
    Click info 
    Check dialog