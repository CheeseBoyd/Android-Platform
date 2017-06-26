package ph.com.mb.t_buildfragment;

import android.app.Fragment;
import android.os.Bundle;
import android.support.annotation.Nullable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;

/**
 * Created by Ahyen24 on 3/31/2017.
 */

public class useFragment extends Fragment {
    @Nullable
    @Override
    public View onCreateView(
            LayoutInflater inflater,
            ViewGroup container,
            Bundle savedInstanceState) {
        LinearLayout linLayout=
                new LinearLayout(getActivity());
        Button b = new Button(getActivity());
        b.setText("Hello Button");
        linLayout.addView(b);
        return linLayout;
    }
}
