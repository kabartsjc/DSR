# SIAD-AERO DSR


Projeto Maven com requisitos de qualidade a serem utilizados.


PACOTE DEMO
demo.mvc.* pacote com exemplo de aplicação mvc inteira rodando usando JSF, Servlets e EJB

PACOTE PRINCIPAL
br.com.energias.siad.dsr -> pacote principal dos projetos do siad-aero

PACOTES RELACIONADOS A TESTE DE ACEITAÇÃO (CUCUMBER)
br.com.energias.siad.runner
br.com.energias.siad.steps
features

TESTES DE INTEGRAÇÃO
Deve ser usado a anotations existentes em com.test.annotation.type.IntegrationTest

TESTES DE QUALIDADE

<!-- JACOCO --> JACOCO PARA SER USADO COMO FORMA DE CONTROLE

jacoco:report -> verificar os problemas

OBS TAGs
 	include -> <package>.* (classes do projeto)
	exclude -> <package>.* (classes demo)

* não entra as classes de aceitação (não faz sentido, pois não implementam testes unitarios e de integração

<!--FINDBUGS-->


PROCESSO DE COMPILAÇÃO
mvn clean test -> realiza os testes unitarios 
mvn clean package -> gera os pacotes
mvn clean install -> running the integration tests 

