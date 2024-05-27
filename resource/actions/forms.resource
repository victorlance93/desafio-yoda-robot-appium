*** Settings ***
Documentation        Ações e elementos da tela de formulários

Library        AppiumLibrary

*** Variables ***
${login}               //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/tvItemTitle' and @text='Login' and @package='com.qaxperience.yodapp']
${cadastro}            //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/tvItemTitle' and @text='Cadastro' and @package='com.qaxperience.yodapp']

${input_email}         //android.widget.EditText[@resource-id='com.qaxperience.yodapp:id/etEmail' and @text='Email']
${input_senha}         //android.widget.EditText[@resource-id='com.qaxperience.yodapp:id/etPassword' and @text='Senha secreta']
${button_send}         //android.widget.Button[@resource-id='com.qaxperience.yodapp:id/btnSubmit' and @text='ENTRAR']
${input_error}         //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/textinput_error']

${field_name}          //android.widget.EditText[@resource-id='com.qaxperience.yodapp:id/etUsername' and @text='Nome']
${field_email}         //android.widget.EditText[@resource-id='com.qaxperience.yodapp:id/etEmail' and @text='Email']
${field_senha}         //android.widget.EditText[@resource-id='com.qaxperience.yodapp:id/etPassword' and @text='Senha']
${select_level}        //android.widget.Spinner[@resource-id='com.qaxperience.yodapp:id/spinnerJob']
${select_jedi}         //android.widget.TextView[@resource-id='android:id/text1' and @text='Jedi']
${button_cadastrar}    //android.widget.Button[@resource-id='com.qaxperience.yodapp:id/btnSubmit' and @text='CADASTRAR']

*** Keywords ***
Checkpoint tela formularios
    Wait Until Page Contains    Formulários    5

Deve clicar em login
    Click Element    xpath=${login}

Deve clicar em cadastro 
    Click Element    xpath=${cadastro}


Preenche e submete formulários
    Wait Until Page Contains    Olá Padawan, vamos testar o login?    5
    Input Text      xpath=${input_email}    victor@gmail.com
    Input Text      xpath=${input_senha}    Test123#
    Click Element    xpath=${button_send}
    Wait Until Page Contains    Oops! Credenciais incorretas.    5

Preenche formulário com email inválido
    Wait Until Page Contains    Olá Padawan, vamos testar o login?    5
    Input Text       xpath=${input_email}    victor#gmail.com
    Input Text       xpath=${input_senha}    Test123#
    Click Element    xpath=${button_send}
    Wait Until Page Contains Element    xpath=${input_error}           5
    Wait Until Page Contains    Email válido você deve informar!       5

Preenche formulário sem informar senha
    Wait Until Page Contains    Olá Padawan, vamos testar o login?    5
    Input Text                          xpath=${input_email}          victor@gmail.com
    Click Element                       xpath=${button_send}
    Wait Until Page Contains Element    xpath=${input_error}          5
    Wait Until Page Contains    Uma senha você deve informar!         5

Checkpoint tela de Cadastro
    Wait Until Page Contains    Crie sua conta.    5
Deve cadastrar usuário com sucesso 
    Input Text       xpath=${field_name}     Victor Lance
    Input Text       xpath=${field_email}    victor@gmail.com
    Input Text       xpath=${field_senha}    Test123#    
    Click Element    xpath=${select_level}
    Sleep    1
    Click Element    xpath=${select_jedi}
    Click Element    xpath=${button_cadastrar}
    Wait Until Page Contains    Tudo certo, boas vindas ao Yodapp! 

Validar campos obrigatórios no cadastro
    Click Element    xpath=${button_cadastrar}
    Wait Until Page Contains Element    xpath=${input_error}          5
    Wait Until Page Contains    Seu nome você deve informar!   
    Input Text       xpath=${field_name}     Victor Lance
    Click Element    xpath=${button_cadastrar}
    Wait Until Page Contains Element    xpath=${input_error}          5
    Wait Until Page Contains    Email válido você deve informar! 
    Input Text       xpath=${field_email}    victor@gmail.com
    Click Element    xpath=${button_cadastrar}
    Wait Until Page Contains Element    xpath=${input_error}          5
    Wait Until Page Contains    Uma senha você deve informar! 
    Input Text       xpath=${field_senha}    Test123#    
    Click Element    xpath=${button_cadastrar}
    Wait Until Page Contains    Tudo certo, boas vindas ao Yodapp!  