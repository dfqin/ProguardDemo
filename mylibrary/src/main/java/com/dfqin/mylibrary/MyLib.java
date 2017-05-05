package com.dfqin.mylibrary;

import android.text.TextUtils;

import com.dfqin.mylibrary.module.Module1;
import com.dfqin.mylibrary.module.user.Student;
import com.dfqin.mylibrary.module2.Module2;

/**
 * Created by dfqin on 2017/2/21.
 */

public class MyLib {

    private String name;
    private GrantorInfo info;

    public MyLib() {

    }

    public MyLib(String name) {
        this.name = name;
    }

    public String getName() {

        if (name != null) {
            return name;
        }
        Base1 b = new Base1("temp");
        return b.getName();
    }

    public String useClass1(Interface1 a) {
        return a.getName();
    }

    public String useStu() {
        Student st = new Student();
        return st.getName();
    }

    public String userClass1() {
        Class1 c1 = new Class1();
        if (c1.getNames() == null) {
            String temp = new Base1.InnerBase2().getName();
            if (temp == null) {
                temp = new InnerBase2().getName();
            } else {
                temp = new InnerBase1().toString();
            }
            return temp;
        }

        return c1.getNames();
    }

    public String useModule() {
        Module1.InnerModule1 m1 = new Module1.InnerModule1();
        String re = m1.getName();
        if (re == null) {
            Module2.InnerModule2 m2 = new Module2.InnerModule2();
            if (m2.getName() == null) {
                Sub1 sub1 = new Sub1();
                return sub1.getSubName1();
            }

        }
        return re;
    }


    static int age = 30;
    class InnerBase1 {
        private String name;
    }

    static class InnerBase2 {
        private String name;
        String getName() {
            return name;
        }
    }
}
