*** Settings ***
Documentation        Ações e elementos do componente menu burguer

Library        AppiumLibrary

*** Variables ***
${clique_botoes}        //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/tvItemTitle' and @text='Clique em Botões' and @package='com.qaxperience.yodapp']
${check_radio}          //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/tvItemTitle' and @text='Check e Radio' and @package='com.qaxperience.yodapp']
${formularios}          //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/tvItemTitle' and @text='Formulários' and @package='com.qaxperience.yodapp']
${dialogs}              //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/tvItemTitle' and @text='Dialogs' and @package='com.qaxperience.yodapp']
${star_wars}            //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/tvItemTitle' and @text='Star Wars' and @package='com.qaxperience.yodapp']
${saiba_mais_button}    //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/tvDocs' and @text='Saiba mais...' and @package='com.qaxperience.yodapp']
${qax_button}           //android.widget.Button[@resource-id='com.qaxperience.yodapp:id/btnBuyNowNavigation' and @text='QAX' and @package='com.qaxperience.yodapp']



*** Keywords ***
Menu burguer aberto
    Wait Until Page Contains    Exclusivo para treinamentos ministrados pela QAXperience.    5


Checando opções de clique 
    Wait Until Page Contains Element    ${clique_botoes}    5
    Wait Until Page Contains Element    ${check_radio}      5
    Wait Until Page Contains Element    ${formularios}      5
    Wait Until Page Contains Element    ${dialogs}          5
    Wait Until Page Contains Element    ${star_wars}        5

Click menu clique 
    Click Element    xpath=${clique_botoes}

Click menu Check e Radio 
    Click Element    xpath=${check_radio}

Click menu Formulario
    Click Element    xpath=${formularios}

Click menu Dialogs
    Click Element    xpath=${dialogs}

Click menu Star Wars
    Click Element    xpath=${star_wars}




