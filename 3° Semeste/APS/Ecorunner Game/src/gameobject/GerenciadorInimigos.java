package gameobject;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

import javax.management.ObjectInstance;
import javax.naming.InitialContext;

import util.Resource;

public class GerenciadorInimigos {
	
	private BufferedImage obstaculo1;
	private BufferedImage obstaculo2;
	private BufferedImage obstaculo3;
	private BufferedImage drone;
	private Random aleatorio;
	private Drone Drone;
	
	private List<Inimigos> inimigos;
	private Personagemprincipal personagemprincipal;
	
	public GerenciadorInimigos(Personagemprincipal personagemprincipal) {
		aleatorio = new Random();
		obstaculo1 = Resource.getResouceImage("data/obstaculo1.png");
		obstaculo2 = Resource.getResouceImage("data/obstaculo2.png");
		obstaculo3 = Resource.getResouceImage("data/obstaculo3.png");
		drone = Resource.getResouceImage("data/drone1.png");
		inimigos = new ArrayList<Inimigos>();
		this.personagemprincipal = personagemprincipal;
		inimigos.add(criarInimigo());
	}
	
	public void atualiza() {
		for(Inimigos e : inimigos) {
			e.atualiza();
		}
		Inimigos inimigos1 = inimigos.get(0);
		if(inimigos1.foradatela()) {
			personagemprincipal.aumentapontos();
			inimigos.clear();
			inimigos.add(criarInimigo());
		}
	}
	
	public void draw(Graphics g) {
		for(Inimigos e : inimigos) {
			if(e.equals(Drone)) {g.drawImage(Drone.animacaoDrone.getFrame(), Drone.posX,Drone.Y_LAND - drone.getHeight(), null);}
			e.draw(g);
		}
	}
	
	private Inimigos criarInimigo() {
		// if (enemyType = getRandom)
		int type = aleatorio.nextInt(4);

		if(type == 0) {
			return Drone = new Drone(personagemprincipal, 900, drone.getWidth()-10, drone.getHeight() - 10, drone);
		}
		else if(type == 1) {
			return new Obstaculos(personagemprincipal, 905, obstaculo1.getWidth() - 10, obstaculo1.getHeight() - 10, obstaculo1);
		} 
		else if(type == 2){
			return new Obstaculos(personagemprincipal, 920, obstaculo2.getWidth() - 10, obstaculo2.getHeight() - 10, obstaculo2);
		}
		else {
			return new Obstaculos(personagemprincipal, 935, obstaculo3.getWidth() - 10, obstaculo3.getHeight() - 10, obstaculo3);
		}

	}
	
	public boolean colidiu() {
		for(Inimigos e : inimigos) {
			if (personagemprincipal.getBound().intersects(e.getBound())) {
				return true;
			}
		}
		return false;
	}
	
	public void resetar() {
		inimigos.clear();
		inimigos.add(criarInimigo());
	}
	
}
