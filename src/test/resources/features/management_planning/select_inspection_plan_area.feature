#language : pt
@selectInspectionPlanArea
Funcionalidade: Seleção de área referência para geração do plano de inspeção

  #Não se aplicam:
  #Mapa com alta resolução e 3D.
  #Informações de inspeções não realizadas nas plataformas SIAD-AERO.
  #Não é necessário apresentar informações com detalhes dos ativos.
  #Não são necessárias torres georreferenciadas.
  
  Contexto: Selecionar área de referência para gerar o plano de inspeção
    Dado que eu estou no mapa de planejamento gerencial

  Cenário: selecionar a CSD de interesse
    Quando eu clico com o botão direito do mouse sob e escolho a opção selecionar CSD
    Então a CSD fica salientada no mapa é selecionada como referência para a geração das inspeções cabíveis.

  Cenário: selecionar parte de uma região no mapa
    E estou com a ferramenta de seleção de região ativa
    Quando eu seleciono uma região com uma ferramenta de seleção
    E clico com o botão direito do mouse e escolho a opção selecionar região
    Então a região fica salientada no mapa e selecionada como referência para a geração das inspeções cabíveis.

  Cenário: selecionar ativos específicos
    Quando eu clico sob um ativo específico
    Então eu posso adicioná-los para a geração das inspeções cabíveis.
    
#Observação: DEVE-SE HABILITAR O USO DO BOTÃO DIREITO PARA AS FUNCIONALIDADES MACRO DO SISTEMA, CONTEXTUALIZADA COM O TIPO DE ATIVO E/OU COMPONENTE DE INTERFACE SELECIONADO. O BOTÃO DIREITO DEVE HABILITAR DE FORMA ADEQUADA E HARMONIOSA O ACESSO AOS RECURSOS DO SISTEMA. 
