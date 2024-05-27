*** Settings ***
Documentation        Ações e elementos da tela de checkbox e radio button

Library        AppiumLibrary

*** Variables ***
${checkbox}            //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/tvItemTitle' and @text='Checkbox' and @package='com.qaxperience.yodapp']
${radio_button}        //android.widget.TextView[@resource-id='com.qaxperience.yodapp:id/tvItemTitle' and @text='Botões de radio' and @package='com.qaxperience.yodapp']

${ruby}                //android.widget.CheckBox[contains(@text, 'Ruby')]
${java}                //android.widget.CheckBox[contains(@text, 'Java')]
${robot_framework}    //android.widget.CheckBox[contains(@text, 'Robot Framework')]
${cobol}              //android.widget.CheckBox[contains(@text, 'Cobol')]

${python}            //android.widget.RadioButton[contains(@text, 'Python')]
${elixir}            //android.widget.RadioButton[contains(@text, 'Elixir')]
*** Keywords ***
Checkpoint tela check box
    Wait Until Page Contains    Check e Radio    5

Clique Checkbox
    Click Element    xpath=${checkbox}

Escolha as opções do checkbox
    Wait Until Page Contains    Ruby
    Click Element    xpath=${ruby}
    Sleep    1
    Click Element    xpath=${java}
    Sleep    1
    Click Element    xpath=${robot_framework}
    Sleep    1

Checar se opções checkbox estão como checked
        Element Attribute Should Match      ${robot_framework}       checked     true
        Element Attribute Should Match      ${ruby}                  checked     true
        Element Attribute Should Match      ${java}                  checked     true
        Element Attribute Should Match      ${cobol}                 checked     false

Clique Radio button
    Click Element    xpath=${radio_button}

Escolha as opções do radio button
    Wait Until Page Contains    Python     5
    Click Element    xpath=${python}
    Sleep    1

Checar se opções radio estão como checked
        Element Attribute Should Match      ${python}       checked     true
        Element Attribute Should Match      ${elixir}       checked     false

Checar se o status do botão atualiza
    Wait Until Page Contains    Robot Framework     5
    Click Element    xpath=${robot_framework}
    Element Attribute Should Match      ${robot_framework}       checked     true
    Sleep    2
    Click Element    xpath=${robot_framework}
    Element Attribute Should Match      ${robot_framework}        checked     false
    Sleep    1