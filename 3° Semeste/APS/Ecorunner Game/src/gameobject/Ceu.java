package gameobject;

import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Random;

import util.Resource;
public class Ceu {
    public BufferedImage ceu = Resource.getResouceImage("data/ceu.png");
    public void draw(Graphics g) {
        g.drawImage(ceu, 0, 0, null);
    }
    
}
