#language : pt
@generateDispatchedMission
Funcionalidade: Gerar missão despachada.

  Cenário: Finalização de um plano de inspeção
    Dado que eu visualizei/editei e salvei um plano de inspeção, recebendo a mensagem de que será gerada uma Missão Despachada
    Quando eu selecionar a opção de que estou ciente
    Então o sistema automaticamente associa ao plano de inspeção todas as plataformas disponíveis e possíveis para o cumprimento da missão
