#language: pt
@applyEnergyAssetFilter
Funcionalidade: Navegação em um mapa de ativos utilizando filtros de tipo ativo

  #Não se aplicam:
  #Mapa com alta resolução e 3D.
  #Informações de inspeções não realizadas nas plataformas SIAD-AERO.
  #Não é necessário apresentar informações com detalhes dos ativos.
  #Não são necessárias torres georreferenciadas.
  #FD: Nota de falha e Defeito
  Contexto: Exploração de mapa de ativos
    Dado que eu estou no módulo "planejamento Gerencial"
    E visualizando o mapa dos ativos sob concessão da empresa

  Cenário: Filtro de rede de AT habilitado
    Quando eu habilito do filtro de AT
    Então eu quero visualizar no mapa geográfico todas as CSD e as redes de AT, ou apenas a CSD selecionada.

  Cenário: Filtro de linha de BT habilitado
    Quando eu habilito do filtro de BT
    Então eu quero visualizar no mapa geográfico todas as CSD selecionadas e as redes de BT.

  Cenário: Filtro de linha de MT habilitado
    Quando eu habilito do filtro de MT
    Então eu quero visualizar no mapa geográfico todas as CSD selecionadas as redes de MT.

  Cenário: Filtro de subestações habilitado
    Quando eu habilito do filtro de subestações
    Então eu quero visualizar no mapa geográfico todas as CSD  selecionadas e as subestações.
