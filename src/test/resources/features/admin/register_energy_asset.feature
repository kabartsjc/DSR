# language: pt
@registerEnergyAsset
Funcionalidade: Cadastro de Ativos de Energia

  Contexto: Planejador já se encontra logado no sistema SIAD-AERO

  Cenário: Fazer cadastro de Ativos de Energia
    Dado que eu estou na Interface de Administração do Sistema no menu Ativos de Energia
    Quando eu insiro informações sobre o  Ativo de Energia
      | Nome                 | Posição    | Categoria | Tipo de Inspeção |
      | Linha de Transmissão | lat , long |         1 |                2 |
    Então o sistema deve mostrar mensagem : Ativos de Energia cadastrados com sucesso!
