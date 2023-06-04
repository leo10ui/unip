package gameobject;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.Rectangle;
import java.awt.image.BufferedImage;

import util.Animation;
import util.Resource;

public class Drone extends Inimigos{
    
    public static final int Y_LAND = 330;

    protected int posX;
	protected int largura;
	protected int altura;
	
	private BufferedImage image;
	private Personagemprincipal personagemprincipal;
    protected Animation animacaoDrone;
	
	private Rectangle rectBound;
	
	public Drone(Personagemprincipal personagemprincipal, int posX, int largura, int altura, BufferedImage image) {
		this.posX = posX;
		this.largura = largura;
		this.altura = altura;
        this.image = image;
		this.personagemprincipal = personagemprincipal;
		rectBound = new Rectangle();

        animacaoDrone = new Animation(120);
        animacaoDrone.addFrame(Resource.getResouceImage("data/Drone1.png"));
        animacaoDrone.addFrame(Resource.getResouceImage("data/Drone2.png"));
        animacaoDrone.addFrame(Resource.getResouceImage("data/Drone3.png"));
        animacaoDrone.addFrame(Resource.getResouceImage("data/Drone4.png"));
	}
	
	public void atualiza() {
        animacaoDrone.updateFrame();
		posX -= personagemprincipal.getSpeedX();
	}
	
	public void draw(Graphics g) {
		g.drawImage(animacaoDrone.getFrame(), posX, Y_LAND - image.getHeight(), null);
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
