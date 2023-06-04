public class Produto {
    protected int cod;
    protected String desc;
    protected String fab;
    protected double preco;
    public void setCod(int cod){
        this.cod = cod;
    }
    public int getCod(){
        return cod;
    }
    public void setDesc(String desc){
        this.desc = desc;
    }
    public String getDesc(){
        return desc;
    }
    public void setFab(String fab){
        this.fab = fab;
    }
    public String getFab(){
        return fab;
    }
    public void setPreco(double preco){
        if(preco < 0){
            throw new RuntimeException("Preço Inválido");
        }
        this.preco = preco;
    }

    public Produto(int cod,String desc,String fab,double preco){
        setCod(cod);
        setDesc(desc);
        setFab(fab);
        setPreco(preco);
    }
    public Produto(){

    }
    public String toString(){
        return "Código: " + getCod() + " -- Descrição: " + desc;
    }
}
