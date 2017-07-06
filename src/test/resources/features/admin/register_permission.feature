# language: pt
@registerPermission
Funcionalidade: Cadastro de Permissões de Uso

  Contexto: Planejador já se encontra logado no sistema SIAD-AERO

  Cenário: Fazer cadastro de Permissões dentro do sistema
    Dado que eu estou na Interface de Administração do Sistema no menu Permissões
    Quando eu insiro informações sobre a permissão
      | Nome    | Descrição                     |
      | Edição  | Editar arquivos e Planos      |
      | LEITURA | Somente ler arquivos e Planos |
    Então o sistema deve mostrar mensagem : Permissão de Uso cadastrado com sucesso!
