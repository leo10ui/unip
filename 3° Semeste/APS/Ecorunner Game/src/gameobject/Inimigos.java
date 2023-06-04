package gameobject;

import java.awt.Graphics;
import java.awt.Rectangle;

public abstract class Inimigos {
	public abstract void atualiza();
	public abstract void draw(Graphics g);
	public abstract Rectangle getBound();
	public abstract boolean foradatela();
}
