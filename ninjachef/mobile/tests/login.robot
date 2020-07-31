***Settings***
Documentation           Testes login NinjaChef Mobile

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session

***Test Cases***
Acessar o cardapio
    Dado que eu desejo comer "Massas"
    Quando submeto meu email "papito@qaninja.com.br"
    Então devo ver a lista de pratos por tipo
