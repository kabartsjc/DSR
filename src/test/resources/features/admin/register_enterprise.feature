# language: pt
@registerEnterprise
Funcionalidade: Cadastro de Unidades da Empresa (SEDES)

  Contexto: Planejador já se encontra logado no sistema SIAD-AERO

  Cenário: Fazer cadastro de Unidades da Empresa
    Dado que eu estou na Interface de Administração do Sistema no menu Empresa
    Quando eu insiro informações sobre a Unidade da Empresarial
      | Nome | Area | Lat       | Long     | Cidade              | Estado |
      | CSD1 | SUL  | 8989.8989 | 5454.545 | São José dos Campos | SP     |
    Então o sistema deve mostrar mensagem : Empresa cadastrada com sucesso!
