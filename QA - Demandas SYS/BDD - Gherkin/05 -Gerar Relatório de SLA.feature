#encoding: UTF-8
#language: pt

Funcionalidade: Gerar relatório de SLA
    Como um usuário do Demanda SYS
    Quero acessar uma tela
    Para gerar um relatório com o tempo médio de relatórios finalizados

Contexto: 
    Dado que estou conectado no sistema
    E acesso à página de relatórios de sla

Cenario: Pesquisa com sucesso    
    Quando clico nas caixas de período 
    E preencho com datas válidas
    E clico no botão gerar relatório
    Então devo ver uma grid com status e seus tempos totais e médio nos períodos escolhidos

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