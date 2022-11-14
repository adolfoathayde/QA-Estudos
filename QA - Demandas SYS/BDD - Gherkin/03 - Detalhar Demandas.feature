#encoding: UTF-8
#language: pt

Funcionalidade: Detalhar Demandas
    Como um usuário do Demanda SYS
    Quero acessar detalhes de uma demanda
    Para modificar seus Status

Contexto:
    Dado que estou conectado no sistema
    E acesso à página do Painel de Demandas 
    E identifico uma demanda   
    E aperto o botão detalhar

Cenario: Adicionar Responsável  
    Quando clico na caixa responsável 
    E seleciono um responsável válido
    E clico no botão verde
    Então devo ver uma mensagem de responsável alterado com sucesso

Cenario: Alterar Responsável
    E a demanda tem um responsável    
    Quando clico na caixa responsável 
    E seleciono um responsável válido
    E clico no botão verde
    Então devo ver uma mensagem de responsável alterado com sucesso

Cenario: Alterar Status 
    E a demanda tem um responsável
    Quando clico na caixa status 
    E seleciono um novo status
    E clico no botão verde
    Então devo ver uma mensagem de status alterado com sucesso 
    E a atualização do histórico de log

Cenario: Finalizar uma etapa    
    E um status ativo
    E a demanda tem um responsável
    Quando modifico o status para finalizado
    E clico no botão verde    
    Então devo ver que o responsável voltou a ficar vazio

Cenario: Status Inicio da construção
    E a demanda tem um responsável
    Quando modifico o status para finalizado
    E surge um pop-up
    E seleciono uma base 
    E clico no botão verde  
    Então devo ver uma mensagem de status alterado com sucesso

Cenario: Paralisar uma fase   
    E um status ativo
    E a demanda tem um responsável
    Quando modifico o status para paralisar
    E clico no botão verde 
    E seleciono o sub-status
    E clico no botão azul   
    Então devo ver uma mensagem de status alterado com sucesso
    E o tempo deve ser parado

Cenario: Finalizar uma demanda
    E a demanda tem um responsável
    Quando clico na caixa status 
    E seleciono o status finalizada em produção
    E clico no botão verde
    Então devo ver uma mensagem de status alterado com sucesso 
