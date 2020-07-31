***Settings***
Documentation       Palavras chave de apoio

***Keywords***
Login Session
    [Arguments]     ${email}

    base.Open Session

    Go To           ${base_url}

    Input Text      ${CAMPO_EMAIL}      ${email}
    Click Element   ${BOTAO_ENTRAR}

    Wait Until Page Contains Element    ${DIV_DASH}