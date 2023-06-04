public class NaoPerecivel
    extends Produto{
    private int garantia;
    public void setGarantia(int garantia){
        this.garantia = garantia;
    }
    public int getGarantia(){
        return garantia;
    }
    public NaoPerecivel(int cod,String desc,String fab,double preco,int garantia){
        super(cod,desc,fab,preco);
        setGarantia(garantia);
    }
    public NaoPerecivel() {

    }

}
