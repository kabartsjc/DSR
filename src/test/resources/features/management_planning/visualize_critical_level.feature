# language : pt
@visualizeCriticalLevel
Funcionalidade: Visualização da criticidade de ativos

  #Não se aplicam:
  #Mapa com alta resolução e 3D.
  #Informações de inspeções não realizadas nas plataformas SIAD-AERO.
  #Não é necessário apresentar informações com detalhes dos ativos.
  #Não são necessárias torres georreferenciadas.
  
  Contexto: Explorar visualização de criticidade
    Dado que eu estou na interface do planejador gerencial
    Quando existir um processo de análise automática de ativos executado

  Cenário: existem ativos em estado crítico de inspeção
    E existirem ativos com inspeções consideradas críticas
    Então mesmos devem ser salientados no mapa em cor vermelha a legenda "MUITO CRÍTICO".

  Cenário: existem ativos em estado de criticidade de inspeção em nível de atenção.
    E existirem ativos com inspeções consideradas em estado de criticidade em nível de atenção
    Então mesmos devem ser salientados no mapa em cor amarela a legenda "ATENÇÃO".

  Cenário: existem ativos em estado considerado não critico.
    E existirem ativos com inspeções consideradas em estado de não criticidade.
    Então mesmos devem ser salientados no mapa em cor verde com a legenda "NÃO-CRíTICO".

  Cenário: existem ativos para os quais a criticidade não se aplica.
    E existirem ativos para os quais a análise da criticidade não se aplica
    Então mesmos devem ser salientados na mapa em cor branca com a legenda "N/A".

  Cenário: existem ativos para os quais a criticidade não pôde ser computada.
    E existirem ativos para os quais a análise da criticidade não pôde ser avaliada
    Então mesmos devem ser salientados na mapa em cor preta com a legenda "Sem Criticidade Calculada".
