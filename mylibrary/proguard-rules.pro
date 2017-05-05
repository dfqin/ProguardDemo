# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/dfqin/Library/Android/sdk/tools/proguard/proguard-android.txt
# You can edit the include path and order by changing the proguardFiles
# directive in build.gradle.
#
# For more details, see
#   http://developer.android.com/guide/developing/tools/proguard.html

# Add any project specific keep options here:

# If your project uses WebView with JS, uncomment the following
# and specify the fully qualified class name to the JavaScript interface
# class:
#-keepclassmembers class fqcn.of.javascript.interface.for.webview {
#   public *;
#}


#类Base1不会被混淆，默认构造函数不混淆，被调用到的构造函数不混淆
#它的方法和成员变量会被混淆，用不到的方法会被删除，用不到的非默认构造函数也会被删除
#它的内部类会被混淆
-keep class com.dfqin.mylibrary.Base1

#类Base1的内部类InnerBase1不混淆，其混淆规则参考Base1
-keep class com.dfqin.mylibrary.Base1$InnerBase1

# 类MyLib不会被混淆，它的成员变量和方法也不会被混淆
-keep class com.dfqin.mylibrary.MyLib {*;}

#MyLib的所有内部类不混淆，内部类的成员变量和方法也不被混淆
-keep class com.dfqin.mylibrary.MyLib$* {*;}

#接口Interface1不被混淆,它的成员变量会被混淆，没有被调用到的会删除
-keep class com.dfqin.mylibrary.Interface1

#接口Interface1不被混淆,它的成员变量会被混淆，没有被调用到的会删除 ((-keep interface 与 -keep class等同))
# -keep interface com.dfqin.mylibrary.Interface1

#接口Interface2不被混淆，它的成员变量和方法都不混淆
-keep class com.dfqin.mylibrary.Interface2 {*;}

#接口Interface2不被混淆，它的成员变量和方法都不混淆 (-keep interface 与 -keep class等同)
#-keep interface com.dfqin.mylibrary.Interface2 {*;}


# module包下面的所有类都不被混淆，module下面的类的内部类也不被混淆，混淆规则参考Base1，但是下面的子包和子包内的类会被混淆
-keep class com.dfqin.mylibrary.module.*

# module包下面的类的成员变量和方法不被混淆，module包下面的内部类的成员变量和方法不被混淆，子包和子包内的类会被混淆
-keep class com.dfqin.mylibrary.module.* {*;}

# module2下面的所有类和子包及子包内的类都不混淆，子包继续嵌套的子包和类也不混混淆，混淆规则参考Base1
-keep class com.dfqin.mylibrary.module2.**

# module2下面的所有类和子包内的类都不混淆，类的成员变量和方法不混淆，类的内部类的成员变量和方法也不混淆
-keep class com.dfqin.mylibrary.module2.** {*;}

# Base1的子类不混淆，混淆规则参考Base1
#-keep class * extends com.dfqin.mylibrary.Base1

# Base1的子类不混淆,子类的成员变量和方法也不混淆
-keep class * extends com.dfqin.mylibrary.Base1 {*;}

# 类名不混淆，符合规则的成员变量和方法也不混淆
#-keep class com.dfqin.mylibrary.GrantorInfo {
#    private java.lang.String name; #keep一个成员变量
#    public java.lang.String get*(); #keep符合规则的方法
#}

# -keep,allowshrinking class_specification 的简写，允许压缩(当没有引用时，会被删除)
-keepnames class com.dfqin.mylibrary.GrantorInfo

##成员变量和方法根据规则不混淆
#-keepclassmembers class com.dfqin.mylibrary.GrantorInfo {
#       private java.lang.String name;
#       public java.lang.String get*();
#}

#-keepclassmembers,allowshrinking class_specification的简写，符合条件的成员变量和函数，如果符合压缩条件会被删除
#-keepclassmembernames class com.dfqin.mylibrary.GrantorInfo {
#       private java.lang.String name;
#       public java.lang.String get*();
#}

#
##类名不混淆，符合规则的成员变量和方法也不混淆
#-keepclasseswithmembers class com.dfqin.mylibrary.GrantorInfo {
#       private java.lang.String name;
#       public java.lang.String get*();
#}


#
# -keepclasseswithmembers,allowshrinking class_specification的简写
#-keepclasseswithmembernames class com.dfqin.mylibrary.GrantorInfo {
#       private java.lang.String name;
#       public java.lang.String get*();
#}