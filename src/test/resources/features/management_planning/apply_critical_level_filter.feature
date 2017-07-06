# language : pt
@applyCriticalLevelFilter
Funcionalidade: Navegação em um mapa de ativos utilizando filtro de criticidade

  #Não se aplicam:
  #Mapa com alta resolução e 3D.
  #Informações de inspeções não realizadas nas plataformas SIAD-AERO.
  #Não é necessário apresentar informações com detalhes dos ativos.
  #Não são necessárias torres georreferenciadas.
  
  Contexto: Exploração de mapa de ativos com filtro de criticidade
    Dado que eu estou no módulo "planejamento Gerencial" e visualizando o mapa dos ativos sob concessão da empresa
    E existe um processo de análise automática de criticidade de ativos executado

  Cenário: Filtro criticidade alta habilitado
    Quando eu habilitar o filtro de criticidade alta
    Então eu quero visualizar no mapa geográfico todas as CSD e os ativos com criticidade alta

  Cenário: Filtro criticidade média habilitado
    Quando eu habilitar o filtro de criticidade média
    Então eu quero visualizar no mapa geográfico todas as CSD e os ativos com criticidade média.

  Cenário: Filtro criticidade baixa habilitado
    Quando eu habilitar o filtro de criticidade baixa
    Então eu quero visualizar no mapa geográfico todas as CSD e os ativos com criticidade baixa.

  Cenário: Filtro de não criticidade habilitado
    Quando eu habilitar o filtro não críticos
    Então eu quero visualizar no mapa geográfico todas as CSD e os ativos sem criticidade.
