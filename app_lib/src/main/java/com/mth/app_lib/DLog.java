package com.mth.app_lib;

import android.util.Log;

import com.google.gson.Gson;


public class DLog {
    private static final String TAG = "DLog_";

    public  DLog(){
        Gson gson = new Gson();

    }
    public static void logE(String msg){
        Log.e(TAG, msg);
    }
}
