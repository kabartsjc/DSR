package br.com.energias.siad.dsr.steps.admin;

import cucumber.api.DataTable;
import cucumber.api.PendingException;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class RegisterRoleSteps {

	@Dado("^que eu estou na Interface de Administração do Sistema no menu Perfis$")
	public void que_eu_estou_na_Interface_de_Administração_do_Sistema_no_menu_Perfis() throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		throw new PendingException();
	}

	@Quando("^eu insiro informações sobre o Perfil do Usuário$")
	public void eu_insiro_informações_sobre_o_Perfil_do_Usuário(DataTable arg1) throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		// For automatic transformation, change DataTable to one of
		// List<YourType>, List<List<E>>, List<Map<K,V>> or Map<K,V>.
		// E,K,V must be a scalar (String, Integer, Date, enum etc)
		throw new PendingException();
	}

	@Então("^o sistema deve mostrar mensagem : Perfil de usuário cadastrado com sucesso!$")
	public void o_sistema_deve_mostrar_mensagem_Perfil_de_usuário_cadastrado_com_sucesso() throws Throwable {
		// Write code here that turns the phrase above into concrete actions
		throw new PendingException();
	}

}
