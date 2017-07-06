# language: pt
@registerDepartament
Funcionalidade: Cadastro de Departamentos

  Contexto: Planejador já se encontra logado no sistema SIAD-AERO

  Cenário: Fazer cadastro dos Departamentos da Empresa
    Dado que eu estou na Interface de Administração do Sistema no menu Departamentos
    Quando eu insiro informações sobre o Departamento
      | Nome | Area | Lat       | Long     | Cidade              | Estado |
      | CSD1 | SUL  | 8989.8989 | 5454.545 | São José dos Campos | SP     |
    Então o sistema deve mostrar mensagem de Departamento cadastrado com sucesso
