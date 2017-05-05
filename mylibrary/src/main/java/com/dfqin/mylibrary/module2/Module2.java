package com.dfqin.mylibrary.module2;

/**
 * Created by dfqin on 2017/2/21.
 */

public class Module2 {

    private String name;

    public String getName() {
        if (name == null) {
            return new InnerModule2().getName();
        }
        return name;
    }

    public static class InnerModule2 {
        private String name;
        public String getName() {
            return name;
        }
    }

}
