#encoding: UTF-8
#language: pt

Funcionalidade: Gerar relatório de demandas por período
    Como um usuário do Demanda SYS
    Quero acessar uma tela
    Para gerar um relatório de demandas por período

Contexto: 
    Dado que estou conectado no sistema
    E acesso à página de relatórios de demandas

Cenario: Pesquisa com sucesso    
    Quando clico nas caixas de período 
    E preencho com datas válidas
    E clico no botão gerar relatório
    Então devo ver uma grid com as demandas nos períodos escolhidos

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
    Quando clico no botão limpar
    Então devo ver todos os campos limpos

Esquema do Cenario: Editar e Detalhar uma demanda
    Quando faço uma pesquisa com sucesso  
    E clico em <botao>     
    Então devo ver uma nova tela
    |   botao      |
    |   detalhar   |
    |   editar     |