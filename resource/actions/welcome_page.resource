*** Settings ***
Documentation        Ações e elementos da tela de Boas vindas do app 

Library        AppiumLibrary

*** Variables ***
${qax_button}    //android.widget.Button[@text='QAX' and @package='com.qaxperience.yodapp']


*** Keywords ***
Fazer checkpoint inicial do app
    Wait Until Page Contains    Yodapp                        10
    Click Element    xpath=${qax_button}