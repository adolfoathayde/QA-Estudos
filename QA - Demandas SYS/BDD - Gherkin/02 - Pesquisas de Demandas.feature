#encoding: UTF-8
#language: pt

Funcionalidade: Pesquisas de Demandas
    Como um usuário do Demanda SYS
    Quero acessar o painel de Demandas
    Para fazer pesquisas de Demandas 

Contexto:
    Dado que estou conectado no sistema
    E acesso à página do Painel de Demandas 

Cenario: Formato Padrão 
    Então devo ver as demandas não finalizadas em formato de grid
    E devo ver um contador de status em forma de “farol”

Esquema do Cenario: Pesquisar uma Demanda com sucesso
    Quando preencho o campo de pesquisa com um <valor> válido
    E marco <selecao> em finalizada
    E seleciono responsável <pessoa>
    E aperto o botão pesquisar
    Então devo ver o resultado filtrado
    |   valor   |   selecao |   pessoa   |
    |   codigo  |   sim     |   listado  |       
    |   nome    |   não     |            |

Cenario: Limpar os dados preenchidos
    Quando preencho algum campo
    E clico no botão limpar
    Então devo ver todos os campos limpos

Esquema do Cenario: Editar e Detalhar uma demanda
    Quando clico em <botao>     
    Então devo ver uma nova tela
    |   botao      |
    |   detalhar   |
    |   editar     |