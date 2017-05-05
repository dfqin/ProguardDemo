package com.dfqin.mylibrary;

/**
 * Created by dfqin on 2017/2/21.
 */

public class Base1 {

    private String name = "base1";
    private String addr = "shanghai";

    public static int age = 20;


    public Base1() {
        this.name = null;
        this.addr = null;
    }

    public Base1(String name) {
        this.name = name;
    }

    public Base1(String name, String addr) {
        this.name = name;
        this.addr = addr;
    }

    public String getName() {
        if (name == null) {
            name = "null";
        }
        return new InnerBase1().getName();
    }

    public void show() {
        System.out.print("for test");
    }

    public String getAddr() {
        return addr;
    }


    class InnerBase1 {
        private String name;
        String getName() {
            return name;
        }
    }

    static class InnerBase2 {
        private String name;
        String getName() {
            return name;
        }
    }

}
