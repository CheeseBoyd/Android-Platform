package ph.com.mb.t_calculator;

/**
 * Created by Ahyen24 on 4/4/2017.
 */

public class Mathematics {
    private double output = 0;
    private int addCounter = 0;
    private int subCounter = 0;
    private int multiplyCounter = 0;
    private int divisionCounter = 0;

    public double setter(double a){
        if (addCounter == 1) {return output+=a;}
        if (subCounter == 1) {return output-=a;}
        if (multiplyCounter == 1) {return output*=a;}
        if (divisionCounter == 1) {return output/=a;}
        else {
            return output = a;
        }

    }

    public void setCounter(String op){
        if (op.equals("+")){this.addCounter = 1;}
        if (op.equals("-")) {this.subCounter = 1;}
        if (op.equals("*")) {this.multiplyCounter = 1;}
        if (op.equals("/")) {this.divisionCounter = 1;}
        if(op.equals("reset")) {
            this.addCounter = 0;
            this.subCounter = 0;
            this.multiplyCounter = 0;
        }
    }


    public double eq(){
        return this.output;
    }
}
