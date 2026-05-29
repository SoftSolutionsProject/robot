*** Settings ***
Documentation    Testes automatizados da funcionalidade publica de cursos do PI.
Resource    ../resources/api_keywords.robot
Suite Setup    Criar Sessao Da API

*** Test Cases ***
API Deve Responder Com Status OK
    Validar Que API Esta Online

Usuario Deve Conseguir Listar Cursos Publicos
    Listar Cursos Publicos

API Deve Validar Id Invalido Na Busca De Curso
    Validar Erro Ao Buscar Curso Com Id Invalido
