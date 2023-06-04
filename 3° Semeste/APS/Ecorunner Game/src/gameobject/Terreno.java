package gameobject;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import util.Resource;

public class Terreno {
	
	public static final int LAND_POSY = 5;
	
	private List<Imagemterreno> terrenolista;
	private BufferedImage terreno1;
	private BufferedImage terreno2;
	private BufferedImage terreno3;
	
	private Personagemprincipal personagemprincipal;
	
	public Terreno(int width, Personagemprincipal personagemprincipal) {
		this.personagemprincipal = personagemprincipal;
		terreno1 = Resource.getResouceImage("data/terreno1.png");
		terreno2 = Resource.getResouceImage("data/terreno2.png");
		terreno3 = Resource.getResouceImage("data/terreno3.png");
		int numerodoterreno = width / terreno1.getWidth() + 2;
		terrenolista = new ArrayList<Imagemterreno>();
		for(int i = 0; i < numerodoterreno; i++) {
			Imagemterreno imagemterreno = new Imagemterreno();
			imagemterreno.posX = i * terreno1.getWidth();
			defineImagemTerreno(imagemterreno);
			terrenolista.add(imagemterreno);
		}
	}
	
	public void atualiza(){
		Iterator<Imagemterreno> itr = terrenolista.iterator();
		Imagemterreno primeiro  = itr.next();
		primeiro .posX -= personagemprincipal.getSpeedX();
		float previousPosX = primeiro .posX;
		while(itr.hasNext()) {
			Imagemterreno element = itr.next();
			element.posX = previousPosX + terreno1.getWidth();
			previousPosX = element.posX;
		}
		if(primeiro .posX < -terreno1.getWidth()) {
			terrenolista.remove(primeiro );
			primeiro .posX = previousPosX + terreno1.getWidth();
			defineImagemTerreno(primeiro );
			terrenolista.add(primeiro );
		}
	}
	
	private void defineImagemTerreno(Imagemterreno imagemterreno) {
		int tipoterreno = tipoterreno();
		if(tipoterreno == 1) {
			imagemterreno.image = terreno1;
		} else if(tipoterreno == 3) {
			imagemterreno.image = terreno3;
		} else {
			imagemterreno.image = terreno2;
		}
	}
	
	public void draw(Graphics g) {
		for(Imagemterreno imagemterreno : terrenolista) {
			g.drawImage(imagemterreno.image, (int) imagemterreno.posX, LAND_POSY, null);
		}
	}
	
	private int tipoterreno() {
		Random aleatorio = new Random();
		int tipo = aleatorio.nextInt(10);
		if(tipo == 1) {
			return 1;
		} else if(tipo == 9) {
			return 3;
		} else {
			return 2;
		}
	}
	
	private class Imagemterreno {
		float posX;
		BufferedImage image;
	}
	
}
