package demo.mvc.indicadores;

import demo.mvc.modelo.SerieTemporal;

public interface Indicador {

	public abstract double calcula(int posicao, SerieTemporal serie);

}