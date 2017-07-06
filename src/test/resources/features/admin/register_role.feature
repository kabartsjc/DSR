# language: pt
@registerRole
Funcionalidade: Cadastro de Perfil

  Contexto: Planejador já se encontra logado no sistema SIAD-AERO

  Cenário: Fazer cadastro de Perfis de Usuários
    Dado que eu estou na Interface de Administração do Sistema no menu Perfis
    Quando eu insiro informações sobre o Perfil do Usuário
      | Nome              | Descrição                                                 |
      | Planejador Master | Este perfil pode acessar e criar planejamentos gerenciais |
    Então o sistema deve mostrar mensagem : Perfil de usuário cadastrado com sucesso!
