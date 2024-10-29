package com.example.latihan5_btnnavigasi;

import android.view.MenuItem;

import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.Fragment;

//import com.example.latihan5_btnnavigasi.fragment_home;

import com.google.android.material.bottomnavigation.BottomNavigationView;
import com.google.android.material.navigation.NavigationBarView;


public class MainActivity extends AppCompatActivity {
    BottomNavigationView bottomNavigationView;
    private final BottomNavigationView.OnNavigationItemSelectedListener navigation = new BottomNavigationView.OnNavigationItemSelectedListener() {
        @Override
        public boolean onNavigationItemSelected(@NonNull MenuItem item) {
            Fragment f = null;
//            switch (item.getItemId()){
//                case R.id.menu_home:
//                    f = new fragment_home();
//                    break;
//                case R.id.menu_cart:
//                    f = new fragment_cart();
//                    break;
//                case R.id.menu_notification:
//                    f = new fragment_notif();
//                    break;
//                case R.id.menu_person:
//                    f = new fragment_profile();
//                    break;
//            }
            if (item.getItemId() == R.id.menu_home) {
                f = new fragment_home();
            } else if (item.getItemId() == R.id.menu_cart) {
                f = new fragment_cart();
            } else if (item.getItemId() == R.id.menu_notification) {
                f = new fragment_notif();
            } else if (item.getItemId() == R.id.menu_person) {
                f = new fragment_profile();
            }
            getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container_view_tag, f).commit();
            return true;
        }
    };

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        bottomNavigationView = findViewById(R.id.menu_btn_navigasi);
        bottomNavigationView.setOnNavigationItemSelectedListener(navigation);
        getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container_view_tag, new fragment_home()).commit();
        if (savedInstanceState == null) {
            getSupportFragmentManager().beginTransaction().replace(R.id.fragment_container_view_tag, new fragment_home()).commit();
        }
    }
}
