#language : pt
@editInspectionPlan
Funcionalidade: Modificar plano de inspeção gerado

  Contexto: Modificar um plano de inspeção gerado
    Dado que eu estou visualizando de modo detalhada o plano de inspeção

  Cenário: Existem ativos ou inspeções a serem modificadas no plano de inspeção
    Quando eu selecionar a opção "Editar Plano de Inspeção"
    Então devo as funcionalidade de remover/inserir ou adicionar componentes do plano de inspeção - ativos e inspeções - deve ser ativado.

  Cenário: Necessidade de remover ativo do plano de inspeção
    Quando eu selecionar um ativo e clicar com o botão direito ou ícone na opção "remover ativo do plano de inspeção"
    Então a o mesmo deve ser removido do plano de inspeção e este deve ser atualizado.

  Cenário: Necessidade de selecionar um novo ativo ou conjunto de ativos ao plano de inspeção
    Quando eu selecionar adicionar um ativo ao plano de inspeção
    Então as opções de inserir através de id ou do mapa devem estar disponíveis

  Cenário: Existem ativos selecionados para serem adicionados ao plano de inspeção
    E houver um ativo ou conjunto de ativos para inserção no plano de inspeção
    Quando eu selecionar a opção "adicionar ativo(s) ao plano"
    Então os ativos devem ser adicionados ao plano de inspeção

  Cenário: Necessidade de adicionar ou remover uma inspeção  do plano de inspeção
    Quando eu marcar ou desmarcar um tipo de inspeção de um plano de inspeção
    Então a lista o plano de inspeção deve ser atualizado.
