***Settings***
Documentation       Suite de testes de cadastro de produtos/pratos
...                 Sendo um cozinheiro amador
...                 Quero cadastrar meus melhores pratos
...                 Para que eu possa cozinha-los para outras pessoas

Resource        ../resources/base.robot

Test Setup      Login Session       lenin@yahoo.com
Test Teardown   Close Session

***Variables***
#nhoque é um variavel do tipo dicionáiro (chave=valor)
&{nhoque}       img=nhoque.jpg  nome=Nhoque molho páprica   tipo=Massas     preco=20.00

***Test Cases***
Novo Prato
    Dados que "${nhoque}" é um dos meus pratos
    Quando faço o cadastro desse item
    Então devo ver este prato no meu dahsboard