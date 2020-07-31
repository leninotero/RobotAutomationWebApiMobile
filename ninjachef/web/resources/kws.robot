***Settings***
Documentation       Palavras chave do projeto

***Keywords***
Dado que acesso a pagina principal  
    Go To   ${base_url}   

#### Cadastro de Cliente
#email é uma variável simlples
Quando submeter o meu email "${email}"
    Input Text      ${CAMPO_EMAIL}     ${email}
    Click Element   ${BOTAO_ENTRAR}
    Sleep           3

Então devo ser autenticado
    Wait Until Page Contains Element    ${DIV_DASH}

#expect_message é uma variável simlples
Então devo ver a mensagem "${expect_message}"
    Wait Until Element Contains    ${DIV_ALERT}    ${expect_message}

#### Cadastro de pratos
Dados que "${produto}" é um dos meus pratos
    Set Test Variable   ${produto}

#${EXECDIR} = Execution Dir: Diretorio atual onde é executado o projeto *
#${CURDIR} = Current Dir: Diretorio atual do projeto
Quando faço o cadastro desse item
    Wait Until Element Is Visible           ${BOTAO_ADD}   5
    Click Element                           ${BOTAO_ADD}

    Choose File         ${CAMPO_FOTO}       ${EXECDIR}/resources/images/${produto['img']}
    
    Input Text          ${CAMPO_NOME}       ${produto['nome']}
    Input Text          ${CAMPO_TIPO}       ${produto['tipo']}
    Input Text          ${CAMPO_PRECO}      ${produto['preco']}

    Click Element       ${BOTAO_CADASTRAR} 

Então devo ver este prato no meu dahsboard
    Wait Until Element Contains     ${DIV_LISTA}      ${produto['nome']}