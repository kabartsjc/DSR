package demo.mvc.bean;

import java.io.Serializable;
import java.lang.reflect.Constructor;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;

import javax.faces.bean.ManagedBean;
import javax.faces.bean.ViewScoped;

import org.primefaces.model.chart.ChartModel;

import demo.mvc.grafico.GeradorModeloGrafico;
import demo.mvc.indicadores.Indicador;
import demo.mvc.indicadores.IndicadorFechamento;
import demo.mvc.indicadores.MediaMovelSimples;
import demo.mvc.modelo.Candle;
import demo.mvc.modelo.CandlestickFactory;
import demo.mvc.modelo.Negociacao;
import demo.mvc.modelo.SerieTemporal;
import demo.mvc.ws.ClienteWebService;

@ViewScoped
@ManagedBean
public class ArgentumBean implements Serializable {

	private static final long serialVersionUID = 1L;
	private List<Negociacao> negociacoes;
	private ChartModel modeloGrafico;
	private String nomeMedia;
	private String nomeIndicadorBase;

	private Date filtroDataDe;
	private Date filtroDataAte;

	public ArgentumBean() {
		this.negociacoes = new ClienteWebService().getNegociacoes();
		geraGrafico();
	}

	public void geraGrafico() {
		List<Candle> candles = new CandlestickFactory().constroiCandles(negociacoes);
		SerieTemporal serie = new SerieTemporal(candles);
		GeradorModeloGrafico geradorGrafico = new GeradorModeloGrafico(serie, 2, serie.getUltimaPosicao());
		geradorGrafico.plotaMediaMovelSimples(defineIndicador());
		this.modeloGrafico = geradorGrafico.getModeloGrafico();
	}

	public void filtra() {
		aplicaFiltro();
		geraGrafico();
	}

	private void aplicaFiltro() {
		Calendar de = Calendar.getInstance();
		if (filtroDataDe != null) {
			de.setTime(filtroDataDe);
		} else {
			de.add(Calendar.MONTH, -12);
		}

		Calendar ate = Calendar.getInstance();
		if (filtroDataAte != null) {
			ate.setTime(filtroDataAte);
		} else {
			ate.add(Calendar.MONTH, 12);
		}

		negociacoes = new ClienteWebService().getNegociacoes();

		negociacoes = negociacoes.stream().filter(n -> n.getData().after(de) && n.getData().before(ate))
				.collect(Collectors.toList());
	}

	private Indicador defineIndicador() {
		Indicador indicador = null;
		if (nomeIndicadorBase == null || nomeIndicadorBase.isEmpty() || nomeMedia == null || nomeMedia.isEmpty()) {
			return new MediaMovelSimples(new IndicadorFechamento());
		}

		String pacote = "demo.mvc.indicadores.";
		try {
			Class<?> classeIndicadorBase = Class.forName(pacote + nomeIndicadorBase);
			Indicador indicadorBase = (Indicador) classeIndicadorBase.newInstance();

			Class<?> classeMedia = Class.forName(pacote + nomeMedia);
			Constructor<?> construtorMedia = classeMedia.getConstructor(Indicador.class);
			indicador = (Indicador) construtorMedia.newInstance(indicadorBase);

		} catch (RuntimeException e) {
			throw e;
		} catch (Exception e) {
			System.out.println("a");
		}
		return indicador;
	}

	public ChartModel getModeloGrafico() {
		return modeloGrafico;
	}

	public List<Negociacao> getNegociacoes() {
		return negociacoes;
	}

	public String getNomeIndicadorBase() {
		return nomeIndicadorBase;
	}

	public String getNomeMedia() {
		return nomeMedia;
	}

	public void setNomeIndicadorBase(String nomeIndicadorBase) {
		this.nomeIndicadorBase = nomeIndicadorBase;
	}

	public void setNomeMedia(String nomeMedia) {
		this.nomeMedia = nomeMedia;
	}

	public Date getFiltroDataDe() {
		return (Date) filtroDataDe.clone();
	}

	public void setFiltroDataDe(Date filtroDataDe) {
		this.filtroDataDe = (Date) filtroDataDe.clone();
	}

	public Date getFiltroDataAte() {
		return (Date) filtroDataAte.clone();
	}

	public void setFiltroDataAte(Date filtroDataAte) {
		this.filtroDataAte = (Date) filtroDataAte.clone();
	}

}
