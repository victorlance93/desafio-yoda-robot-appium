*** Settings ***
Documentation        Ações e elementos da tela de personagens do star wars

Library        AppiumLibrary
Library        ../libs/helper.py
*** Variables ***
${lista}             //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/tvItemTitle' and @text='Lista' and @package='com.qaxperience.yodapp'] 
${busca}             //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/tvItemTitle' and @text='Busca' and @package='com.qaxperience.yodapp']
${mando}             //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/textAbout' and @text='@mando']
${leia}              //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/textAbout' and @text='@leia']
${button_add}        //android.widget.ImageButton[@resource-id='com.qaxperience.yodapp:id/fab']
${field_search}      //android.widget.EditText[@resource-id='com.qaxperience.yodapp:id/etSearch' and @text='Busque aqui']

*** Keywords ***
Checkpoint tela Star Wars
    Wait Until Page Contains    Star Wars    5

Click lista    
    Click Element    xpath=${lista}

Click busca    
    Click Element    xpath=${busca}

Deve checar os textos do personagens
    Click Element    locator

Deve mover o card
    Wait Until Page Contains    Luke Skywalker     5
    ${luke_skywlaker}               Set Variable        //android.widget.TextView[@text="@skywalker"]/../../..//*[contains(@resource-id, "drag_handle")]
    ${mandaloriado}                 Set Variable        //android.widget.TextView[@text="@mando"]/../../..//*[contains(@resource-id, "drag_handle")]
    Meu Drag And Drop        ${luke_skywlaker}        ${mandaloriado}

Deve verificar o texto do card aberto
    Wait Until Page Contains    Darth Vader     5
    Click Element    ${mando}
    Wait Until Page Contains    Cresceu sob os costumes da cultura mandaloriana tornando-se um caçador de recompensas e guerreiro.
    Click Element    ${mando}
    Sleep    1
    Click Element    ${leia}
    Wait Until Page Contains    Princesa do planeta Alderaan, membro do Senado Imperial, espiã da Aliança Rebelde e general da Resistência.
    Click Element    ${leia}
    Sleep    1

Deve verificar se há mais personagens
    Wait Until Page Contains    Darth Vader     5
    Click Element    ${button_add}
    Wait Until Page Contains    Em breve novos personagens!

Deve fazer uma busca especifica
    Wait Until Page Contains    Darth Vader     5
    Input Text       xpath=${field_search}    Darth Vader
    Wait Until Page Contains                  1 personagem encontrado

Deve fazer uma busca sem resultados
    Wait Until Page Contains    Darth Vader     5
    Input Text       xpath=${field_search}    Bob Marley
    Wait Until Page Contains                  Nenhum personagem encontrado!

Deve fazer uma busca genérica trazendo mais de um resultado
    Wait Until Page Contains    Darth Vader     5
    Input Text       xpath=${field_search}    di
    Wait Until Page Contains                  2 personagens encontrados
    