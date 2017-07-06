# language: pt
@accessManagementPlanning
Funcionalidade: Acesso ao Módulo de Planejamento Gerencial de Inspeção

  Contexto: Planejador já se encontra no sistema SIAD-AERO
    Dado e eu estou logado no sistema SIAD-AERO
    Quando eu selecionar o módulo "Planejamento Gerencial" através da interface do sistema

  Cenário: Não existe permissão de acesso ao "Planejamento Gerencial" para o usuário
    E meu usuário não possuir um dos papéis abaixo
      | Role                |
      | Planjedor Gerencial |
    Então eu devo visualizar uma mensagem "Usuário não tem acesso permitido ao módulo de Planejamento Gerencial".

  Cenário: Existe permissão de acesso ao "Planejamento Gerencial" para o usuário
    E meu usuário possuir um dos papéis abaixo
      | Role                |
      | Planjedor Gerencial |
    Então eu devo visualizar a "Tela Inicial de Planejamento Gerencial" com o mapa da região geográfica que compreende a concessão da empresa a qual estou lotado.
