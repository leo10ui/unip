package gameobject;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import util.Resource;

public class GerenciadorColeteveis {
	
	private BufferedImage coletavel1;
	private BufferedImage coletavel2;
	private Random aleatorio;
	
	private List<Collect> coletaveis;
	private Personagemprincipal personagemprincipal;
	
	public GerenciadorColeteveis(Personagemprincipal personagemprincipal) {
		aleatorio = new Random();
		coletavel1 = Resource.getResouceImage("data/planta1.png");
		coletavel2 = Resource.getResouceImage("data/planta2.png");
		coletaveis = new ArrayList<Collect>();
		this.personagemprincipal = personagemprincipal;
		coletaveis.add(criarColetavel());
	}
	
	public void atualiza() {
		for(Collect e : coletaveis) {
			e.atualiza();
		}
		Collect collect = coletaveis.get(0);
		if(collect.foradatela()) {
			coletaveis.clear();
			coletaveis.add(criarColetavel());
		}
	}
	
	public void draw(Graphics g) {
		for(Collect e : coletaveis) {
			e.draw(g);
		}
	}
	
	private Collect criarColetavel() {
		// if (enemyType = getRandom)
		int type = aleatorio.nextInt(2);
		if(type == 0) {
			return new Planta(personagemprincipal, 950, coletavel1.getWidth() - 10, coletavel1.getHeight() - 10, coletavel1);
		} else {
			return new Planta(personagemprincipal, 923, coletavel2.getWidth() - 10, coletavel2.getHeight() - 10, coletavel2);
		}
	}
	
	public boolean colidiu() {
		for(Collect e : coletaveis) {
			if (personagemprincipal.getBound().intersects(e.getBound())) {
				return true;
			}
		}
		return false;
	}
	
	public void resetar() {
		coletaveis.clear();
		coletaveis.add(criarColetavel());
	}
	
}
