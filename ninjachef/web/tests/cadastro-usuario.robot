***Settings***
Documentation   Suite de testes de cadastro de usuários

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Cadastro simples
    Dado que acesso a pagina principal
    Quando submeter o meu email "joao@gmail.com"
    Então devo ser autenticado

Email incorreto
    Dado que acesso a pagina principal
    Quando submeter o meu email "joao&yahoo.com"
    Então devo ver a mensagem "Oops. Informe um email válido!"

Email não informado
    Dado que acesso a pagina principal
    Quando submeter o meu email "${EMPTY}"
    Então devo ver a mensagem "Oops. Informe um email válido!"
