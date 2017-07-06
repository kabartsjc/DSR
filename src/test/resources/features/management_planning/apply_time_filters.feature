#language : pt
@applyTimeFilters
Funcionalidade: Navegação em um mapa de ativos utilizando filtros de período

	Contexto:
		Dado que eu estou na interface de planejamento gerencial

  Cenário: Filtro com datas inicial e final válidas
    
    Quando eu informar datas inicial e final válidas
    E existirem linhas ou redes e subestações das áreas sob concessão com inspeções planejadas e realizadas nestas datas
    Então eu quero visualizar, identificadas com cores distintas, o estado dos ativos em relação a inspeção linha ou rede com inspeção planejada, linha/rede com inspecionada com inspeção planejada, linha/rede com inspeção vencida, linha/rede com inspeção realizada sem FD,  linha/rede com inspeção realizada com FD referentes ao período informado.

  Cenário: Filtro com datas inicial e final inválidas    
    Quando eu informar datas inicial e final inválidas
    Então eu devo receber uma mensagem do sistema solicitando novas datas.

  Cenário: Não existem inspeções realizadas ou planejadas nas datas informadas    
    Quando eu informar datas inicial e final válidas
    E não e não existem inspeções realizadas e planejadas nas datas informadas
    Então eu devo receber uma mensagem informando que não existem inspeções nas datas solicitadas.
