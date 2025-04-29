package model;

public class Juros {
    private final double capital;
    private final int tempo;
    private final double percentual;
    private double juros;
    private double montante;

    public Juros (double capital, int tempo, double percentual) {
        this.capital = capital;
        this.tempo = tempo;
        this.percentual = percentual;
    }

    public double getCapital() {
        return capital;
    }

    public double getPercentual() {
        return percentual;
    }

    public int getTempo() {
        return tempo;
    }

    public double getJuros() {
        return juros;
    }

    public double getMontante() {
        return montante;
    }

    public void calcularJurosSimples () {
        juros = capital * percentual * tempo;
        montante = capital + juros;
    }

    public void calcularJurosComposto () {
        montante = capital * Math.pow(1 + percentual, tempo);
        juros = montante - capital;
    }
}