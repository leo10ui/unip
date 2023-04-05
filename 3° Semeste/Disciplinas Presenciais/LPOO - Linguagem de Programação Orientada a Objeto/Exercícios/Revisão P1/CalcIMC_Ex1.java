public class CalcIMC_Ex1 {
    double altura, massa, imc;
    String classific = "";

    public void setMassa(double massa){
        if(massa < 0){
            throw new RuntimeException("Digite uma massa válida.");
        }
        this.massa = massa;
    }

    public double getMassa(){
        return massa;
    }

    public void setAltura(double altura){
        if(altura < 0){
            throw new RuntimeException("Digite uma altura válida:");
        }
        this.altura = altura;
    }

    public double getAltura(){
        return altura;
    }

    public double calc_imc(){
        imc = massa / Math.pow(altura, 2);
        return imc;
    }

    public String classif(){
        if(imc < 15){
            classific = "Anorexia";
        }
        else if(imc < 20 && imc > 15) {
			classific = "Subpeso";
		}
		else if(imc > 20 && imc < 26) {
			classific = "Peso Normal";
		}
		else if(imc > 25 && imc < 31) {
			classific = "Sobrepeso";
		}
		else if(imc >30) {
            classific = "Obesidade";
        }
        return classific;
    }
}
