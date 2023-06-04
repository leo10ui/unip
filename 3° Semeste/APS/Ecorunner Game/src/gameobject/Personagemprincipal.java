package gameobject;

import java.applet.Applet;
import java.applet.AudioClip;
import java.awt.Color;
import java.awt.Graphics;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;
import java.net.MalformedURLException;
import java.net.URL;

import util.Animation;
import util.Resource;

public class Personagemprincipal {

	public static final int posicao_terreno = 312;
	public static final float gravidade = 0.4f;
	
	private static final int corrida_normal = 0;
	private static final int pulo = 1;
	private static final int corrida_abaixado = 2;
	private static final int morte = 3;
	
	private float posY;
	private float posX;
	private float speedX;
	private float speedY;
	private Rectangle rectBound;
	
	public int pontuacao = 0;
	public int coletaveis = 0;
	
	private int estado = corrida_normal;
	
	private Animation animacaocorridanormal;
	private BufferedImage pulando;
	private Animation animacaocorridaabaixada;
	private BufferedImage imamgemmorte;
	
	private AudioClip sompulo;
	private AudioClip mortesom;
	private AudioClip barulhobonus;
	
	public Personagemprincipal() {
		posX = 50;
		posY = posicao_terreno;
		rectBound = new Rectangle();
		animacaocorridanormal = new Animation(150);
		animacaocorridanormal.addFrame(Resource.getResouceImage("data/personagemprincipal1.png"));
		animacaocorridanormal.addFrame(Resource.getResouceImage("data/personagemprincipal2.png"));
		animacaocorridanormal.addFrame(Resource.getResouceImage("data/personagemprincipal3.png"));
		pulando = Resource.getResouceImage("data/personagemprincipal2.png");
		animacaocorridaabaixada = new Animation(150);
		animacaocorridaabaixada.addFrame(Resource.getResouceImage("data/personagemprincipal5.png"));
		animacaocorridaabaixada.addFrame(Resource.getResouceImage("data/personagemprincipal6.png"));
		animacaocorridaabaixada.addFrame(Resource.getResouceImage("data/personagemprincipal7.png"));
		imamgemmorte = Resource.getResouceImage("data/personagemprincipal4.png");
		
		try {
			sompulo =  Applet.newAudioClip(new URL("file","","data/pulo.wav"));
			mortesom =  Applet.newAudioClip(new URL("file","","data/morte.wav"));
			barulhobonus =  Applet.newAudioClip(new URL("file","","data/aumentaponto.wav"));
		} catch (MalformedURLException e) {
			e.printStackTrace();
		}
	}

	public float getSpeedX() {
		return speedX;
	}

	public void setSpeedX(int speedX) {
		this.speedX = speedX;
	}
	
	public void draw(Graphics g) {
		switch(estado) {
			case corrida_normal:
				g.drawImage(animacaocorridanormal.getFrame(), (int) posX, (int) posY, null);
				break;
			case pulo:
				g.drawImage(pulando, (int) posX, (int) posY, null);
				break;
			case corrida_abaixado:
				g.drawImage(animacaocorridaabaixada.getFrame(), (int) posX, (int) (posY + 5), null);
				break;
			case morte:
				g.drawImage(imamgemmorte, (int) posX, (int) posY, null);
				break;
		}

	}
	
	public void atualiza() {
		animacaocorridanormal.updateFrame();
		animacaocorridaabaixada.updateFrame();
		if(posY >= posicao_terreno) {
			posY = posicao_terreno;
			if(estado != corrida_abaixado) {
				estado = corrida_normal;
			}
		} else {
			speedY += gravidade;
			posY += speedY;
		}
	}
	
	public void pulo() {
		if(posY >= posicao_terreno) {
			if(sompulo != null) {
				sompulo.play();
			}
			speedY = -7.5f;
			posY += speedY;
			estado = pulo;
		}
	}
	
	public void abaixa(boolean isDown) {
		if(estado == pulo) {
			return;
		}
		if(isDown) {
			estado = corrida_abaixado;
		} else {
			estado = corrida_normal;
		}
	}
	
	public Rectangle getBound() {
		rectBound = new Rectangle();
		if(estado == corrida_abaixado) {
			rectBound.x = (int) posX + 5;
			rectBound.y = (int) posY + 20;
			rectBound.width = animacaocorridaabaixada.getFrame().getWidth() - 10;
			rectBound.height = animacaocorridaabaixada.getFrame().getHeight();
		} else {
			rectBound.x = (int) posX + 5;
			rectBound.y = (int) posY;
			rectBound.width = animacaocorridanormal.getFrame().getWidth() - 10;
			rectBound.height = animacaocorridanormal.getFrame().getHeight();
		}
		return rectBound;
	}
	
	public void morte(boolean estamorto) {
		if(estamorto) {
			coletaveis = 0;
			pontuacao = 0;
			estado = morte;
		} else {
			estado = corrida_normal;
		}
	}
	
	public void reseta() {
		posY = posicao_terreno;
	}
	
	public void tocasommorte() {
		mortesom.play();
	}
	

	public void tocasommoeda(){
		barulhobonus.play();
	}

	public void aumentapontos() {
		pontuacao += 1;
		if(pontuacao % 100 == 0) {
			barulhobonus.play();
		}
	}

	public void aumentacoletaveis() {
		coletaveis += 1;
		if(coletaveis % 100 == 0) {
			barulhobonus.play();
		}
	}
	
}
