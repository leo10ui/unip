package userinterface;

import javax.swing.JFrame;

public class Janelajogo extends JFrame {
	
	public static final int SCREEN_WIDTH = 720;
	private Telajogo gameScreen;
	
	public Janelajogo() {
		super("Eco Runner");
		setSize(SCREEN_WIDTH, 410);
		setLocation(400, 200);
		setDefaultCloseOperation(JFrame.EXIT_ON_CLOSE);
		setResizable(false);
		
		gameScreen = new Telajogo();
		addKeyListener(gameScreen);
		add(gameScreen);
	}
	
	public void iniciaJogo() {
		setVisible(true);
		gameScreen.iniciaJogo();
	}
	
	public static void main(String args[]) {
		(new Janelajogo()).iniciaJogo();
	}
}
