# language: pt
@registerSensor
Funcionalidade: Cadastro de Sensores

  Contexto: Planejador já se encontra logado no sistema SIAD-AERO

  Cenário: Fazer cadastro de Sensores
    Dado que eu estou na Interface de Administração do Sistema no menu Sensores
    Quando eu insiro informações sobre o Sensor
      | Nome           | Electric Current | Voltage | Weight |
      | Câmera Visível | 1A               | 12V     | 500g   |
    Então o sistema deve mostrar mensagem : Sensor cadastrado com sucesso!
