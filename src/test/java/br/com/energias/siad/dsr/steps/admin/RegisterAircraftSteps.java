package br.com.energias.siad.dsr.steps.admin;

import cucumber.api.DataTable;
import cucumber.api.java.pt.Dado;
import cucumber.api.java.pt.Então;
import cucumber.api.java.pt.Quando;

public class RegisterAircraftSteps {
	
	@Dado("^que eu estou na Interface de Administração do Sistema no menu de Aeronaves$")
	public void que_eu_estou_na_Interface_de_Administração_do_Sistema_no_menu_de_Aeronaves() throws Throwable {
	   System.out.println("caguei");
		// Write code here that turns the phrase above into concrete actions
	 //   throw new PendingException();
	}

	@Quando("^eu insiro informações sobre a Aeronave$")
	public void eu_insiro_informações_sobre_a_Aeronave(DataTable dts) throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    // For automatic transformation, change DataTable to one of
	    // List<YourType>, List<List<E>>, List<Map<K,V>> or Map<K,V>.
	    // E,K,V must be a scalar (String, Integer, Date, enum etc)
	   // throw new PendingException();
		System.out.println(dts.toString());
	}

	@Então("^o sistema deve mostrar mensagem de Aeronave cadastrada com sucesso$")
	public void o_sistema_deve_mostrar_mensagem_de_Aeronave_cadastrada_com_sucesso() throws Throwable {
	    // Write code here that turns the phrase above into concrete actions
	    //throw new PendingException();
		System.out.println("hahahah");
	}
	

}
