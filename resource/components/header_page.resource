*** Settings ***
Documentation        Ações e elementos do componente header

Library        AppiumLibrary

*** Variables ***
${qax_button}      //android.widget.Button[@resource-id='com.qaxperience.yodapp:id/btnBuyNowToolbar' and @text='QAX' and @package='com.qaxperience.yodapp']
${menu_burguer}    //android.widget.ImageButton[@content-desc="Open navigation drawer"]


*** Keywords ***
Checkpoint página principal
    Wait Until Page Contains    Clique em Botões    5

Click menu burguer
    Click Element    xpath=${menu_burguer}