package ph.com.mb.t_calculator;

import android.view.View;

/**
 * Make the user clicks form an input string that is casted to a number
 * Make the user clicks form a operation
 */


public class Keypad extends Mathematics {
    private String outputString = "";
    private double runningNum = 0.0;
    // Buttonon Parameters should be view objects in android
    public void outputDebug(){
        if (this.outputString==""){
            this.outputString = "0";
            System.out.println("Output: " + this.outputString);
        } else {
            System.out.println("Output: " + this.outputString);
        }

    }

    public void runningNumDebug(){
        double num = Double.parseDouble(outputString);
        System.out.println("Running num: " + num);
    }
    public void button_0(){
        this.outputString+= "0";
    }

    public void button_1(){
        this.outputString+= "1";
    }

    public void button_2(){
        this.outputString+= "2";
    }

    public void button_3(){
        this.outputString+= "3";
    }

    public void button_4(){
        this.outputString+= "4";
    }

    public void button_5(){
        this.outputString+= "5";
    }

    public void button_6(){
        this.outputString+= "6";
    }

    public void button_7(){
        this.outputString+= "7";
    }

    public void button_8(){
        this.outputString+= "8";
    }

    public void button_9(){
        this.outputString+= "9";
    }

// sets output for reuse
    public void setOutputString(String answer){
        this.outputString = answer;
    }
// Keypad operations here

    /**
     * Add operations:
     */
    public void add_button(){
        runningNum = Double.parseDouble(outputString);
        setter(runningNum);
        setCounter("reset");
        setCounter("+");
        this.outputString = "";
        this.runningNum = 0;
    }

    public void subtract_button(){
        runningNum = Double.parseDouble(outputString);
        setter(runningNum);
        setCounter("reset");
        setCounter("-");
        this.outputString = "";
        this.runningNum = 0;
    }

    public void multiply_button(){
        runningNum = Double.parseDouble(outputString);
        setter(runningNum);
        setCounter("reset");
        setCounter("*");
        this.outputString = "";
        this.runningNum = 0;
    }

    public void divide_button(){
        runningNum = Double.parseDouble(outputString);
        setter(runningNum);
        setCounter("reset");
        setCounter("/");
        this.outputString = "";
        this.runningNum = 0;
    }

    public void clearAll(){
        this.outputString = "";
        this.runningNum = 0;
        setter(0);
        setCounter("reset");
    }

    public double equal_button(){
        if ("".equals(this.outputString)){
            button_0();
            runningNum = Double.parseDouble(outputString);
            setter(runningNum);
            return eq();
        } else {
            runningNum = Double.parseDouble(outputString);
            setter(runningNum);
            setCounter("reset");
            return eq();

        }



    }
}
