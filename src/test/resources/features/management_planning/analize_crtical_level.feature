# language: pt
@analizeCrticalLevel
Funcionalidade: Análise de criticidade de ativos

  #Não se aplicam:
  #Mapa com alta resolução e 3D.
  #Não é necessário apresentar informações com detalhes dos ativos.
  #Não são necessárias torres georreferenciadas.
  #Estimar ordem de prioridade
  #Se aplicam:
  #A avaliação da criticidade é sempre global, de correspondente a todos os ativos da empresa. Portanto, não pode ser executado para ativos ou CSD específicas.
  Contexto: 
    Dado que eu estou na interface de planejamento Gerencial

  Cenário: Solicitar análise de criticidades dos ativos
    Quando eu utilizo a ferramenta de análise automática de criticidade
    E existir uma tabela com os parâmetros de criticidade
    Então a visualização deve fornecer as informações geradas a partir dos critérios previamente estabelecidos.

  Cenário: Mostrar relação ordenada com a criticidade de cada CSD ordenado
    Quando o processo de análise de criticidade terminar
    Então a eu devo visualizar uma relação com as CSD e suas respectivas criticidades ordenado por nível de criticidade.

  Cenário: Identificar visualmente no mapa da empresa as CSD´s com seu nível de criticidade identificado
    Quando o processo de análise de criticidade terminar
    Então a eu devo visualizar as CSD e suas respectivas criticidades no mapa em cores diferentes para cada tipo de criticidade.

  Cenário: Identificar visualmente, no mapa, a(s) CSD´(s) mais críticas
    Quando o processo de análise de criticidade terminar
    Então eu devo visualizar no mapa as CSD mais críticas.

  Cenário: Visualizar criticidade quando um ativo é selecionado
    E existe um processo de análise de criticidade realizado
    Então eu posso selecionar um ativo no mapa e visualizar sua criticidade
