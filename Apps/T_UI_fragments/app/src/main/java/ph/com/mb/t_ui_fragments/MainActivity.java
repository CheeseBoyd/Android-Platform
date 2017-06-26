package ph.com.mb.t_ui_fragments;

import android.content.Intent;
import android.support.v7.app.AppCompatActivity;
import android.os.Bundle;
import android.view.View;

public class MainActivity extends AppCompatActivity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
    }

    public void onClick(View view){
        // First build an intent
        // apply context object and the target class activity to launch
        // This is how you start an activity from another activity
        Intent intent = new Intent(this, newActivity.class);
        startActivity(intent);
    }
}
