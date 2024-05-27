*** Settings ***
Documentation        Ações e elementos da tela de dialogs

Library        AppiumLibrary

*** Variables ***
${info}          //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/tvItemTitle' and @text='Info' and @package='com.qaxperience.yodapp']
${titulo}        //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/dialogInfoSubtitle' and @text='Mestre Yoda']
${button_ok}    //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/dialogInfoOk' and @text='OK']

*** Keywords ***
Checkpoint tela dialogs
    Wait Until Page Contains    Dialogs    5

Click info 
    Click Element    xpath=${info}

Check dialog
    Wait Until Element Is Visible    ${titulo}    5
    Wait Until Page Contains    Mestre Yoda    5
    Wait Until Page Contains    Que a Força esteja com você.    5
    Click Element    xpath=${button_ok}
    Sleep    2