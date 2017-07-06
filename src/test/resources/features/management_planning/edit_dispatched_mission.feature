#language : pt
@editDispatchedMission
Funcionalidade: Alteração de missão despachada

  Cenário: Necessidade de alterar missão despachada
    Dado que eu estou verificando as informações geradas automaticamente pelo sistema para gerar uma Missão Despachada e encontrei algum item que desejo modificar
    Quando eu selecionar a opção de editar Missão Despachada
    Então o sistema habilita os diversos campos para que eu possa editar o sistema ; Inspeção, Ativos e plataforma

  Cenário: Necessidade de remover ativo da missão despachada
    Quando eu selecionar um ativo e clicar com o botão direito ou no ícone na opção "remover ativo da missão despachada"
    Então a o mesmo deve ser removido da missão despachada.

  Cenário: Necessidade de selecionar um novo ativo ou conjunto de ativos
    Dado que eu editando uma missão despachada
    Quando eu selecionar adicionar um ativo a missão despachada
    Então as opções de inserir através do mapa ou id devem estar disponíveis

  Cenário: Existem ativos selecionados para serem adicionados a missão despachada
    Dado que eu editando uma missão despachada
    E houver um ativo ou conjunto de ativos para inserção na missão despachada
    Quando eu selecionar a opção adicionar um novo ativo a missão despachada
    Então os ativos devem ser adicionados a missão despachada

  Cenário: Necessidade de adicionar ou remover uma inspeção  da missão despachada
    Dado que eu editando uma missão despachada
    Quando eu marcar ou desmarcar uma inspeção de uma missão despachada
    Então a missão despachada deve ser atualizado.

  Cenário: Necessidade de adicionar uma plataforma a uma missão despachada
    Dado que eu editando uma missão despachada
    Quando eu solicitar adicionar uma plataforma
    Então a lista de plataformas disponíveis é apresentada
    E eu posso selecionar um nova plataforma para ser adicionada a missão despachada.

  Cenário: Necessidade de remover uma plataforma de uma missão despachada
    Dado que eu editando uma missão despachada
    Quando eu solicitar remover uma plataforma
    Então uma confirmação é solicitada
    E a plataforma é removida da missão despachada, em caso positivo.
