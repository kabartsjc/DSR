#language: pt
@generateInspectionPlan
Funcionalidade: Geração de plano de inspeção

  Cenário: geração de plano de inspeção  de forma automática
    Dado existe uma região referência para planejamento selecionada
    E um conjunto de ativos existentes dentro da área de referência
    E uma análise de criticidade realizada
    Quando eu  clico na opção "gerar plano de inspeção"  disponível na interface do módulo de planejamento Gerencial
    Então o sistema gera um plano de inspeção, contendo a lista de ativos existentes na região selecionada com todas as informações, e todas as inspeções possíveis de serem realizadas para cada ativo.
