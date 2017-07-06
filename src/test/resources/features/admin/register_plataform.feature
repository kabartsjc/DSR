# language: pt
@registerPlataform
Funcionalidade: Cadastro de Plataformas

  Contexto: Planejador já se encontra logado no sistema SIAD-AERO

  Cenário: Fazer cadastro da Plataforma
    Dado que eu estou na Interface de Administração do Sistema no menu Plataformas
    Quando eu insiro informações sobre a Plataforma
      | Nome      | InspectionTypeID | AircraftTypeID | SensorType |
      | Visivel 1 |                1 |              1 |          2 |
    Então o sistema deve mostrar mensagem : Plataforma cadastrada com sucesso!
