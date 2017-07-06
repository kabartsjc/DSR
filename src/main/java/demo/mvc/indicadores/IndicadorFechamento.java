package demo.mvc.indicadores;

import demo.mvc.modelo.SerieTemporal;

public class IndicadorFechamento implements Indicador{

	@Override
	public double calcula(int posicao, SerieTemporal serie) {
		return serie.getCandle(posicao).getFechamento();
	}

	@Override
	public String toString() {
		return "Fechamento";
	}
}
