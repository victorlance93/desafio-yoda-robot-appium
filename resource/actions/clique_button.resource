*** Settings ***
Documentation        Ações e elementos da tela de clicks

Library        AppiumLibrary

*** Variables ***
${clique_simples}        //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/tvItemTitle' and @text='Clique simples' and @package='com.qaxperience.yodapp']
${clique_longo}          //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/tvItemTitle' and @text='Clique longo' and @package='com.qaxperience.yodapp']
${click_simples_page}    //android.widget.Button[@resource-id='com.qaxperience.yodapp:id/short_click' and @text='CLIQUE SIMPLES' and @package='com.qaxperience.yodapp']
${click_longo_button}    //android.widget.Button[@resource-id='com.qaxperience.yodapp:id/long_click' and @text='CLIQUE LONGO' and @package='com.qaxperience.yodapp']

*** Keywords ***
Checkpoint tela clique
    Wait Until Page Contains    Clique em Botões    5

Deve fazer um click simples
    Click Element    xpath=${clique_simples}
    Wait Until Page Contains    Botão clique simples    5
    Click Element    xpath=${click_simples_page}
    Sleep    1
    Wait Until Page Contains    Isso é um clique simples    5
Deve fazer um clique longo
    Long Press    xpath=${clique_longo}
    Wait Until Page Contains    Botão clique longo    5
    Long Press    xpath=${click_longo_button}




