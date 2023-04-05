public class CalMedia {
    //Declara as variáveis;
    private double x,y,m;

    //Seta o valor de X e valida o valor;
    public void setX(double x){
        if(x < 0 || x > 100){
            throw new RuntimeException("Digite um valor entre 0 e 100");
        }
        this.x = x;
    }

    //Pega o valor de X;
    public double getX(){
        return x;
    }

    //Seta o valor de Y e valida o valor;
    public void setY(double y){
        if(y < 0 || y > 100){
            throw new RuntimeException("Digite um valor entre 0 e 100");
        }
        this.y = y;
    }

    //Pega o valor de Y;
    public double getY(){
        return y;
    }

    //Calcula a média dos valores;
    public double CalcMedia(){
        m = (x+y)/2;
        return m;
    }
}
