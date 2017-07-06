#language : pt
@confirmDispatchedMission
Funcionalidade: Confirmação de missão despachada.

  Cenário: a Missão Despachada foi visualizada e está apta a ser confirmada
    Dado que existe uma Missão Despachada selecionada
    Quando eu selecionar a opção confirmar Missão Despachada
    E informar a identificação da mesma
    Então um Planejamento Gerencial é persistido no sistema
    E uma notificação é enviada para o Planejador Operacional cadastrado no sistema
