*** Settings ***
Documentation            Suite de testes da feature de Formulário
Resource       ../resource/Base.resource


Test Setup        Start session
Test Teardown     Finish session

*** Test Cases ***
Deve testar o Login 
    Acessa menu
    Click menu Formulario
    Checkpoint tela formularios
    Deve clicar em login
    Preenche e submete formulários

Deve testar login com formato de email inválido
    Acessa menu
    Click menu Formulario
    Checkpoint tela formularios
    Deve clicar em login
    Preenche formulário com email inválido

Deve preencher formulário sem enviar senha
    Acessa menu
    Click menu Formulario
    Checkpoint tela formularios
    Deve clicar em login
    Preenche formulário sem informar senha

Deve fazer o cadastro de usuário com sucesso
    [Tags]    cadastro
    Acessa menu
    Click menu Formulario
    Checkpoint tela formularios
    Deve clicar em cadastro
    Checkpoint tela de Cadastro
    Deve cadastrar usuário com sucesso

Deve preencher apenas itens obrigatórios de cadastro
    [Tags]    cadastro
    Acessa menu
    Click menu Formulario
    Checkpoint tela formularios
    Deve clicar em cadastro
    Checkpoint tela de Cadastro
    Validar campos obrigatórios no cadastro