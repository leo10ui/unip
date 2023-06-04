package gameobject;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;

public class Planta extends Collect {
	
	public static final int Y_LAND = 360;
	
	private int posX;
	private int largura;
	private int altura;
	
	private BufferedImage image;
	private Personagemprincipal personagemprincipal;
	
	private Rectangle rectBound;
	
	public Planta(Personagemprincipal personagemprincipal, int posX, int largura, int altura, BufferedImage image) {
		this.posX = posX;
		this.largura = largura;
		this.altura = altura;
		this.image = image;
		this.personagemprincipal = personagemprincipal;
		rectBound = new Rectangle();
	}
	
	public void atualiza() {
		posX -= personagemprincipal.getSpeedX();
	}
	
	public void draw(Graphics g) {
		g.drawImage(image, posX, Y_LAND - image.getHeight(), null);
		g.setColor(Color.red);
//		Rectangle bound = getBound();
//		g.drawRect(bound.x, bound.y, bound.largura, bound.altura);
	}
	
	public Rectangle getBound() {
		rectBound = new Rectangle();
		rectBound.x = (int) posX + (image.getWidth() - largura)/2;
		rectBound.y = Y_LAND - image.getHeight() + (image.getHeight() - altura)/2;
		rectBound.width = largura;
		rectBound.height = altura;
		return rectBound;
	}

	@Override
	public boolean foradatela() {
		if(posX < -image.getWidth()) {
			return true;
		}
		return false;
	}
	
}
