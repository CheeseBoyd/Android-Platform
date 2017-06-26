package ph.com.mb.t_calculator;

import android.os.Bundle;
import android.support.v7.app.AppCompatActivity;
import android.view.View;
import android.widget.TextView;


public class MainActivity extends AppCompatActivity {
    Keypad k = new Keypad();
    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public String out = "";
    public void click(View view){

        TextView textView = (TextView)findViewById(R.id.textView);
        //For keypad numbers
        if(view.equals(findViewById(R.id.b_1))) {k.button_1();
            out+=1;
            textView.setText(out);
        }
        if(view.equals(findViewById(R.id.b_2))) {k.button_2();
            out+=2;
            textView.setText(out);
        }
        if(view.equals(findViewById(R.id.b_3))) {k.button_3();
            out+=3;
            textView.setText(out);
        }
        if(view.equals(findViewById(R.id.b_4))) {k.button_4();
            out+=4;
            textView.setText(out);
        }
        if(view.equals(findViewById(R.id.b_5))) {k.button_5();
            out+=5;
            textView.setText(out);
        }
        if(view.equals(findViewById(R.id.b_6))) {k.button_6();
            out+=6;
            textView.setText(out);
        }
        if(view.equals(findViewById(R.id.b_7))) {k.button_7();
            out+=7;
            textView.setText(out);
        }
        if(view.equals(findViewById(R.id.b_8))) {k.button_8();
            out+=8;
            textView.setText(out);
        }
        if(view.equals(findViewById(R.id.b_9))) {k.button_9();
            out+=9;
            textView.setText(out);
        }
        if(view.equals(findViewById(R.id.b_0))) {k.button_0();
            out+=0;
            textView.setText(out);
        }
        // For keypad operations
        if(view.equals(findViewById(R.id.b_add))) {k.add_button();
            out += "+";
            textView.setText(out);
        }
        if(view.equals(findViewById(R.id.b_subtract))) {k.subtract_button();
            out+= "-";
            textView.setText(out);
        }
        if(view.equals(findViewById(R.id.b_multiply))) {k.multiply_button();
            out+= "x";
            textView.setText(out);
        }
        if (view.equals(findViewById(R.id.b_divide))) {k.divide_button();
            out += "/";
            textView.setText(out);
        }
        if (view.equals(findViewById(R.id.b_delete_all))) {k.clearAll();
            double d = k.equal_button();
            out = Double.toString(d);
            textView.setText(out);
        }
        if(view.equals(findViewById(R.id.b_equals))) {
            double d = k.equal_button();
            out = Double.toString(d);
            k.setOutputString(out);
            textView.setText(out);

        }
    }


}
