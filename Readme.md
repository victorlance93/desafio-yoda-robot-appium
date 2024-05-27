# Projeto de Automação de Testes com Appium e Robot Framework

## Pré-requisitos mínimos de ambiente

- **Java 11.0.x**
- **Node.js 18.17.x**
- **Python 3.11.x**
- **Appium Inspector**
- **Android Studio**

### Instalação do Appium e Dependências

1. Instalar o Appium:
    ```sh
    npm install -g appium@2.1.3
    ```

2. Instalar o Appium Doctor:
    ```sh
    npm install -g appium-doctor
    ```

3. Instalar o driver UIAutomator2:
    ```sh
    appium driver install uiautomator2@2.29.4
    ```

### Configuração de Variáveis de Ambiente

Certifique-se de configurar as seguintes variáveis de ambiente no PATH do seu sistema operacional:

- `ANDROID_HOME`
- `JAVA_HOME`

### Configuração do Emulador Android

1. Abra o Android Studio.
2. Clique em `Configurar -> AVD Manager`.
3. Clique em `Criar Dispositivo Virtual`.
4. Escolha `Telefone` e clique em `Avançar`.
5. Escolha o `Nome AVD` e clique em `Concluir`.

### Iniciando o Emulador

1. Abra o terminal.
2. Execute o comando:
    ```sh
    emulator -avd <Nome_AVD>
    ```
3. O nome do dispositivo será retornado (exemplo: `Custom_API_34`).

### Configurações de Capabilities

```json
{
  "platformName": "Android",
  "appium:deviceName": "Emulator",
  "appium:automationName": "UIAutomator2",
  "appium:app": "<caminho_do_projeto>/yodapp-beta.apk",
  "appium:udid": "emulator-5554"
}

# Limpeza de Cache do Emulador

Se for necessário limpar o cache do emulador, execute os seguintes comandos:

```sh
adb uninstall io.appium.uiautomator2.server
adb uninstall io.appium.uiautomator2.server.test

# Comandos Extras para Checagem do Ambiente
Verificar se o ambiente está OK:

```sh
appium-doctor --android
Verificar drivers instalados:

```sh
appium driver list --installed
Verificar se o virtual device está ativo / online:


```sh
adb devices

# Instalação do Projeto
Para instalar as dependências do projeto, execute:
```sh
pip install -r requirements.txt

#Instruções Iniciar o Appium Server
Para iniciar o Appium Server, execute:
```sh
npx appium

# Iniciar o Android Device Virtual
Abra o emulador Android configurado anteriormente.

# Execução dos Testes 🤖 🤖

Execução Local

Para rodar todos os testes:

```sh
robot -d ./logs tests/
Para rodar uma suíte específica:
```sh
robot -d ./logs tests/Checkbox_radio.robot
Para incluir uma tag e rodar um cenário específico:
```sh
robot -d ./logs -i search tests/Star_wars.robot

## Escritas dos Testes com BDD


Os arquivos BDD estão localizados no diretório `features` para auxiliar na criação dos cenários e melhor entendimento do comportamento do usuário no app.

### Poque o BDD?

O BDD nos traz uma melhor clareza, mexer no app, entender o comportamento, escrever os casos e assim construir os cenários com base na jornada do usuário.


# Considerações Finais
Este projeto foi configurado para facilitar a automação de testes de aplicativos Android utilizando Appium e Robot Framework. Certifique-se de seguir todos os passos de configuração para garantir que o ambiente esteja devidamente preparado para a execução dos testes.

Se houver qualquer dúvida ou problema, consulte a documentação oficial do Appium e Robot Framework.

### Pontos Adicionais : Aviso, o App nunca sobe junto com o projeto, estou deixando apenas para fins acadêmicos. 

- **Referências**: https://robotframework.org/ 

Este README.md cobre os pré-requisitos, instalação, configuração e execução dos testes, além de fornecer instruções detalhadas para garantir que o ambiente esteja configurado corretamente.

Boa automação! """