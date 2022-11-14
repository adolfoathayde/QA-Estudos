#encoding: UTF-8
#language: pt

Funcionalidade: Gerar Relatório de Execução
    Como um usuário do Demanda SYS
    Quero acessar uma tela
    Para saber a quantidade de tarefas por pessoa no período selecionado.

Contexto: 
    Dado que estou conectado no sistema
    E acesso à página de relatório de execução

Cenario: Pesquisa com sucesso    
    Quando clico nas caixas de período 
    E preencho com datas válidas
    E clico no botão gerar relatório
    Então devo ver o resultado da pesquisa em gráfico de barras
    E em formato de grid 

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

Esquema do Cenario: Salvar gráfico de barras
    Quando vejo o resultado da pesquisa em gráfico de barras
    E clico no botão menu
    E seleciono salvar em <formato>    
    Então devo salvar o gráfico no formato escolhido
    |   formato     |
    |   impressão   |
    |   jpeg        |
    |   pdf         |
    |   svg         |