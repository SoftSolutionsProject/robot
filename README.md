# Automacao de Testes - PI

Projeto de testes automatizados com Robot Framework para uma funcionalidade do PI.

A funcionalidade escolhida foi a consulta publica de cursos da API.

## Estrutura

```text
robot/
├── tests/
│   └── cursos.robot
├── resources/
│   └── api_keywords.robot
├── variables/
│   └── variables.py
├── results/
└── requirements.txt
```

## Pre-requisitos

- Python instalado
- API do PI disponivel no deploy ou rodando localmente
- Dependencias do projeto Robot instaladas

Por padrao os testes acessam:

```text
https://softsolutions-api-prod-brs-fycdfxh4b2g7evgn.canadacentral-01.azurewebsites.net
```


## Instalacao

```bash
pip install -r requirements.txt
```

## Execucao

Execute dentro da pasta `robot`:

```powershell
.\.venv\Scripts\python.exe -m robot -d results tests
```

Se ainda nao existir a pasta `.venv`, crie o ambiente local antes:

```powershell
python -m venv .venv
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
```

## Cenarios Automatizados

- Verificar se a API responde em `/health`
- Listar cursos publicos em `/cursos`
- Validar erro ao buscar curso com ID invalido em `/cursos/abc`

O tempo limite das requisicoes esta configurado em 30 segundos para acomodar o primeiro acesso ao deploy.

## Relatorios

Apos a execucao, os relatorios ficam em:

```text
results/log.html
results/report.html
results/output.xml
```

## Integrantesc do projeto

- Caio Henrique Rodrigues
- Evellin de Lima Jacinto
- Lucas Salvador Notaro
- Lucas Santo Gomes
- Rafael da Costa Castro
