# Automação de Testes - PI

Projeto de testes automatizados com Robot Framework para uma funcionalidade do PI.

A funcionalidade escolhida foi a consulta pública de cursos da API.

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

## Pré-requisitos

- Python instalado
- API do PI disponível no deploy ou rodando localmente
- Dependências do projeto Robot instaladas

Por padrão os testes acessam:

```text
https://softsolutions-api-prod-brs-fycdfxh4b2g7evgn.canadacentral-01.azurewebsites.net
```


## Instalação

```bash
pip install -r requirements.txt
```

## Execução

Execute dentro da pasta `robot`:

```powershell
.\.venv\Scripts\python.exe -m robot -d results tests
```

Se ainda não existir a pasta `.venv`, crie o ambiente local antes:

```powershell
python -m venv .venv
.\.venv\Scripts\python.exe -m pip install -r requirements.txt
```

## Cenários Automatizados

- Verificar se a API responde em `/health`
- Listar cursos públicos em `/cursos`
- Validar erro ao buscar curso com ID inválido em `/cursos/abc`

O tempo limite das requisições está configurado em 30 segundos para acomodar o primeiro acesso ao deploy.

## Relatórios

Após a execução, os relatórios ficam em:

```text
results/log.html
results/report.html
results/output.xml
```

## Integrantes do Projeto

- Caio Henrique Rodrigues
- Evellin de Lima Jacinto
- Lucas Salvador Notaro
- Lucas Santos Gomes
- Rafael da Costa Castro
