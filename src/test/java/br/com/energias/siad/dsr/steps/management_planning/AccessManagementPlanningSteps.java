package br.com.energias.siad.dsr.steps.management_planning;

import cucumber.api.DataTable;
import cucumber.api.PendingException;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class AccessManagementPlanningSteps {
	
	@Dado("^e eu estou logado no sistema SIAD-AERO$")
	public void e_eu_estou_logado_no_sistema_SIAD_AERO() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Quando("^eu selecionar o módulo \"([^\"]*)\" através da interface do sistema$")
	public void eu_selecionar_o_módulo_através_da_interface_do_sistema(String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Quando("^meu usuário não possuir um dos papéis abaixo$")
	public void meu_usuário_não_possuir_um_dos_papéis_abaixo(DataTable arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    // For automatic transformation, change DataTable to one of
	    // List<YourType>, List<List<E>>, List<Map<K,V>> or Map<K,V>.
	    // E,K,V must be a scalar (String, Integer, Date, enum etc)
	    throw new PendingException();
	}

	@Então("^eu devo visualizar uma mensagem \"([^\"]*)\"\\.$")
	public void eu_devo_visualizar_uma_mensagem(String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

	@Quando("^meu usuário possuir um dos papéis abaixo$")
	public void meu_usuário_possuir_um_dos_papéis_abaixo(DataTable arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    // For automatic transformation, change DataTable to one of
	    // List<YourType>, List<List<E>>, List<Map<K,V>> or Map<K,V>.
	    // E,K,V must be a scalar (String, Integer, Date, enum etc)
	    throw new PendingException();
	}

	@Então("^eu devo visualizar a \"([^\"]*)\" com o mapa da região geográfica que compreende a concessão da empresa a qual estou lotado\\.$")
	public void eu_devo_visualizar_a_com_o_mapa_da_região_geográfica_que_compreende_a_concessão_da_empresa_a_qual_estou_lotado(String arg1) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    throw new PendingException();
	}

}
