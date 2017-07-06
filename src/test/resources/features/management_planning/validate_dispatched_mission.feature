#language : pt
@validateDispatchedMission
Funcionalidade: Validação da missão despachada

  Cenário: validar uma Missão Despachada
    Dado que eu alterei uma Missão Despachada
    Quando eu confirmar os dados através da interface de edição de missão despachada
    Então o sistema automaticamente valida a missão despachada editada, em busca de inconsistências : combinação de plataforma + inspeção + ativos
    E informa as  possíveis inconsistências

  Cenário: Não existem inconsistências na Missão Despachada
    Dado que eu alterei uma Missão Despachada
    E o processo de validação não gerou erros
    Então o sistema solicita a confirmação da missão despachada e a identificação da mesma
    E atualiza a missão despachada, sobrescrevendo a anterior, persistindo-a.
