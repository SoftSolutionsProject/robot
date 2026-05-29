*** Settings ***
Library    RequestsLibrary
Library    Collections
Variables    ../variables/variables.py

*** Keywords ***
Criar Sessao Da API
    Create Session    pi_api    ${BASE_URL}    timeout=${REQUEST_TIMEOUT}

Validar Que API Esta Online
    ${response}=    GET On Session    pi_api    /health
    Status Should Be    200    ${response}
    ${body}=    Set Variable    ${response.json()}
    Should Be Equal    ${body}[status]    ok

Listar Cursos Publicos
    ${response}=    GET On Session    pi_api    /cursos
    Status Should Be    200    ${response}
    ${body}=    Set Variable    ${response.json()}
    Should Be True    isinstance($body, list)
    RETURN    ${response}

Validar Erro Ao Buscar Curso Com Id Invalido
    ${response}=    GET On Session    pi_api    /cursos/abc    expected_status=403
    Status Should Be    403    ${response}
    ${body}=    Set Variable    ${response.json()}
    Should Contain    ${body}[message]    ID inválido
