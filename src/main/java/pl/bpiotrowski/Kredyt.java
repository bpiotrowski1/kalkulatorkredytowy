package pl.bpiotrowski;

public class Kredyt {
    private double wysokoscKredytu;
    private double rocznaStopaProcentowa;
    private int okresKredytu;

    public double obliczWysokoscRaty() {
        double q = 1 + (rocznaStopaProcentowa / okresKredytu);
        return wysokoscKredytu * (Math.pow(q, okresKredytu)) * (q - 1) / ((Math.pow(q, okresKredytu)) - 1);
    }

    public double obliczCalkowityKoszt() {
        return obliczWysokoscRaty() * okresKredytu;
    }

    public double getWysokoscKredytu() {
        return wysokoscKredytu;
    }

    public void setWysokoscKredytu(double wysokoscKredytu) {
        this.wysokoscKredytu = wysokoscKredytu;
    }

    public double getRocznaStopaProcentowa() {
        return rocznaStopaProcentowa;
    }

    public void setRocznaStopaProcentowa(double rocznaStopaProcentowa) {
        this.rocznaStopaProcentowa = rocznaStopaProcentowa;
    }

    public int getOkresKredytu() {
        return okresKredytu;
    }

    public void setOkresKredytu(int okresKredytu) {
        this.okresKredytu = okresKredytu;
    }
}
