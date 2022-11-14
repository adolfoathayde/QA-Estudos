#encoding: UTF-8
#language: pt

Funcionalidade: Cadastro de demanda completa
    Como um usuário do Demanda SYS
    Quero cadastrar uma nova demanda
    Para ficar registrado no sistema 

Contexto:
    Dado que estou conectado no sistema
    E acesso à página de cadastro   

Esquema do Cenario: Cadastro com sucesso
    Quando preencho os campos com dados válidos
    E seleciono o <tipo>
    E preencho o campo <customizavel>
    E aperto o botão cadastrar
    Então devo ver uma mensagem de cadastro criado com sucesso
    |   tipo        |    customizavel   |
    |   completo    |    cenarios       |
    |   parcial     |                   | 

Esquema do Cenario: Cadastro sem campos obrigatórios preenchido    
    Quando não preencho o campo de <entrada>
    E preencho os demais campos com dados válidos
    E aperto o botão cadastrar
    Então devo ver uma mensagem de preencha os campos obrigatórios
    |   entrada     |
    |   código      |
    |   nome        |
    |   cenarios    |

Cenario: Cadastro em branco    
    Quando não preencho nenhum campo    
    E aperto o botão cadastrar
    Então devo ver uma mensagem de preencha os campos obrigatórios

Esquema do Cenario: Cadastro duplicado    
    Quando preencho o campo de <entrada> duplicado
    Então devo ver um alerta de que o dado está duplicado
    |   entrada     |
    |   código      |
    |   nome        |  
  