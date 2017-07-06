# language: pt
@registerCSD
Funcionalidade: Cadastro de Centro de Serviço e Distribuição (CSD)

  Contexto: Planejador já se encontra logado no sistema SIAD-AERO

  Cenário: Fazer cadastro de Centros de Serviço e Distribuição
    Dado que eu estou na Interface de Administração do Sistema no menu de CSD
    Quando eu insiro informações sobre a CSD
      | Nome | Area | Lat       | Long     | Cidade              | Estado |
      | CSD1 | SUL  | 8989.8989 | 5454.545 | São José dos Campos | SP     |
    Então o sistema deve mostrar mensagem de CSD cadastrada com sucesso
