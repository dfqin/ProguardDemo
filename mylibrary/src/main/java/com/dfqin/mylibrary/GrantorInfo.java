package com.dfqin.mylibrary;


/**
 * Created by dfqin on 2017/5/4.
 */

public class GrantorInfo {

    private String name;
    private String age;
    private String temp;

    public GrantorInfo() {

    }

    public GrantorInfo(String str) {

    }

    @SuppressWarnings("JniMissingFunction")
    private native String nMethod1();

    @SuppressWarnings("JniMissingFunction")
    public native String nMethod2();


    public String getName() {
        return name;
    }

    public String getAge() {
        return age;
    }
}
