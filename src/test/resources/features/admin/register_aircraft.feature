# language: pt
@registerAircraft
Funcionalidade: Cadastro de Aeronaves

  Contexto: Planejador já se encontra logado no sistema SIAD-AERO

  Cenário: Fazer cadastro de Aeronaves
    Dado que eu estou na Interface de Administração do Sistema no menu de Aeronaves
    Quando eu insiro informações sobre a Aeronave
      | Nome         | Autonomia | Velocidade | Peso  |
      | Multi-Copter | 30 min    | 40 Km      | 15 Kg |
    Então o sistema deve mostrar mensagem de Aeronave cadastrada com sucesso
