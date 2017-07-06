# language: pt
@registerUser
Funcionalidade: Cadastro de Usuários

  Contexto: Planejador já se encontra logado no sistema SIAD-AERO

  Cenário: Fazer cadastro de Usuários do sistema no menu Usuários
    Dado que eu estou na Interface de Administração do Sistema
    Quando eu insiro informações sobre o Usuário
      | Nome | Perfil | Empresa | Departamento | Permissões |
      | João | Admin  | EDP-ES  | INSPEÇÃO     | ADMIN      |
    Então o sistema deve mostrar mensagem : Usuário cadastrado com sucesso!
