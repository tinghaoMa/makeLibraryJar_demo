package com.mth.gradleproguarddemo;

import android.app.Activity;
import android.os.Bundle;

import com.mth.app_lib.DLog;

public class MainActivity extends Activity {

    @Override
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        setContentView(R.layout.activity_main);
        DLog.logE("hello mth");
    }
}
