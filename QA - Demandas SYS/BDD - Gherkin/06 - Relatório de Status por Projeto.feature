#encoding: UTF-8
#language: pt

Funcionalidade: Gerar relatório de status por projeto
    Como um usuário do Demanda SYS
    Quero acessar uma tela
    Para gerar um relatório com a finalização de um projeto

Contexto: 
    Dado que estou conectado no sistema
    E acesso à página de relatório de status por projeto

Cenario: Pesquisa com sucesso    
    Quando clico nas caixas de período 
    E preencho com datas válidas
    E clico no botão gerar relatório
    Então devo ver a finalização de um projeto que contenha várias demandas.

Esquema do Cenario: Pesquisa sem campos obrigatórios preenchidos
    Quando não preencho o período <entrada>
    E aperto o botão gerar relatório
    Então devo ver um alerta de preencha os campos obrigatórios
    |   entrada     |
    |   início      |
    |   fim         |
    |               |

Cenario: Pesquisa sem resultado 
    Quando clico nas caixas de período 
    E preencho com datas válidas
    E clico no botão gerar relatório
    Então devo ver uma mensagem informando que não existem resultados

Cenario: Limpar os dados preenchidos
    Quando preencho algum campo
    E clico no botão limpar
    Então devo ver todos os campos limpos