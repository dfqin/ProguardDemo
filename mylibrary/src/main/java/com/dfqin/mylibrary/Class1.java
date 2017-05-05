package com.dfqin.mylibrary;

import android.util.Log;

/**
 * Created by dfqin on 2017/2/21.
 */

public class Class1 implements Interface1, Interface3 {

    public void setName() {
        Log.v("Tag", "axxxxxx");
    }

    public String getName() {
        return "class1";
    }


    @Override
    public String getNames() {
        return "ddd";
    }
}
