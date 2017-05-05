package com.dfqin.mylibrary.module;

/**
 * Created by dfqin on 2017/2/21.
 */

public class Module1 {

    private String name;
    public String getName() {
        if (name == null) {
            return new InnerModule1().getName();
        }
        return name;
    }

    public static class InnerModule1 {
        private String name;
        public String getName() {
            return name;
        }
    }

}
