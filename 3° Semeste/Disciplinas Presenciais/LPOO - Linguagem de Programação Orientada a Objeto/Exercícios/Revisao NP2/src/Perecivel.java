public class Perecivel
    extends Produto{
    private int dtFab;
    private int prazoVal;
    public void setDtFab(int dtFab){
        this.dtFab = dtFab;
    }
    public int getDtFab(){
        return dtFab;
    }
    public void setPrazoVal(int prazoVal){
        this.prazoVal = prazoVal;
    }
    public int getPrazoVal(){
        return prazoVal;
    }
    public Perecivel(int cod,String desc,String fab,double preco,int dtFab,int prazoVal){
        super(cod,desc,fab,preco);
        setDtFab(dtFab);
        setPrazoVal(prazoVal);
    }
    public Perecivel(){

    }

    @Override
    public String toString(){
        return "Preço: " + preco;
    }
}
