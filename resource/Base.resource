*** Settings ***
Documentation            Arquivo principal do projeto de testes automatizados para Mobile

Library        AppiumLibrary
Library        libs/helper.py
Resource       ./actions/check_radio.resource
Resource       ./actions/clique_button.resource
Resource       ./actions/dialogs.resource
Resource       ./actions/forms.resource
Resource       ./actions/star_wars.resource
Resource       ./actions/welcome_page.resource
Resource       ./components/header_page.resource
Resource       ./components/menu_burguer.resource


*** Keywords ***

Start session
    Open Application    http://localhost:4723
    ...            platformName=Android
    ...            automationName=UIAutomator2
    ...            deviceName=Emulator
    ...            udid=emulator-5554
    ...            app=${EXECDIR}/app/yodapp-beta.apk
    ...            autoGrantPermissions=true
    ...            unicodeKeyboard=true   # Desativa o teclado virtual e usa o método de entrada de texto do Android
    ...            resetKeyboard=true      # Reinicia o estado do teclado após a execução do teste

Finish session
    Capture Page Screenshot
    Close Application

Acessa menu
    Fazer checkpoint inicial do app
    Checkpoint página principal
    Click menu burguer
    Checando opções de clique 