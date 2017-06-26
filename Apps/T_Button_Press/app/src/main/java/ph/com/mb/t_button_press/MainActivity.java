package ph.com.mb.t_button_press;

import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);

    }
    int count = 0;
    public void doStuff(View view) {
        Button b = (Button)view;

        if (count == 0) {
            b.setText("Clicked the first time");
        } else {
            b.setText("Clicked " + count + " of times");
        }
        count++;

    }
}
