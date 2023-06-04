package gameobject;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import userinterface.Janelajogo;
import util.Resource;

public class Nuvens {
	private List<Imagemnuvens> listanuvens;
	private BufferedImage nuvens;
	
	private Personagemprincipal personagemprincipal;
	
	public Nuvens(int width, Personagemprincipal personagemprincipal) {
		this.personagemprincipal = personagemprincipal;
		nuvens = Resource.getResouceImage("data/nuvens.png");
		listanuvens = new ArrayList<Imagemnuvens>();
		
		Imagemnuvens imagemnuven = new Imagemnuvens();
		imagemnuven.posX = 0;
		imagemnuven.posY = 30;
		listanuvens.add(imagemnuven);
		
		/* 
		imagemnuven = new Imagemnuvens();
		imagemnuven.posX = 150;
		imagemnuven.posY = 40;
		listanuvens.add(imagemnuven);
		*/
		imagemnuven = new Imagemnuvens();
		imagemnuven.posX = 300;
		imagemnuven.posY = 50;
		listanuvens.add(imagemnuven);
		/*
		imagemnuven = new Imagemnuvens();
		imagemnuven.posX = 450;
		imagemnuven.posY = 20;
		listanuvens.add(imagemnuven);
		 */
		imagemnuven = new Imagemnuvens();
		imagemnuven.posX = 600;
		imagemnuven.posY = 60;
		listanuvens.add(imagemnuven);
	}
	
	public void atualiza(){
		Iterator<Imagemnuvens> itr = listanuvens.iterator();
		Imagemnuvens primeiro = itr.next();
		primeiro.posX -= personagemprincipal.getSpeedX()/12;
		while(itr.hasNext()) {
			Imagemnuvens element = itr.next();
			element.posX -= personagemprincipal.getSpeedX()/12;
		}
		if(primeiro.posX < -nuvens.getWidth()) {
			listanuvens.remove(primeiro);
			primeiro.posX = Janelajogo.SCREEN_WIDTH;
			listanuvens.add(primeiro);
		}
	}
	
	public void draw(Graphics g) {
		for(Imagemnuvens imgLand : listanuvens) {
			g.drawImage(nuvens, (int) imgLand.posX, imgLand.posY, null);
		}
	}
	
	private class Imagemnuvens {
		float posX;
		int posY;
	}
}
