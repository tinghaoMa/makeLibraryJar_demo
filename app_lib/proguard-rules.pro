# Add project specific ProGuard rules here.
# By default, the flags in this file are appended to flags specified
# in /Users/tension/develop/android-sdk-macosx/tools/proguard/proguard-android.txt
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


-optimizationpasses 5
#混淆时不会产生形形色色的类名
-dontusemixedcaseclassnames
#指定不去忽略非公共的库类
-dontskipnonpubliclibraryclasses
#不优化输入的类文件
-dontoptimize
-ignorewarnings
#指定不去忽略包可见的库类的成员
-dontskipnonpubliclibraryclassmembers
#不单独提出 内部类
-keepattributes InnerClasses
#不优化泛型
-keepattributes Signature

-optimizations !code/simplification/arithmetic,!class/merging/*,!code/allocation/variable
-dontwarn cn.jpush.**
-keep class cn.jpush.** {*;}

-keep public class * extends android.app.Activity
-keep public class * extends android.app.ActivityGroup{*;}
-keep public class * extends android.app.Application
-keep public class * extends android.app.Service
-keep public class * extends android.content.BroadcastReceiver
-keep public class * extends android.content.ContentProvider
-keep public class * extends android.app.backup.BackupAgentHelper
-keep public class * extends android.preference.Preference

-keep public class * extends android.view.** {*;}
-keep public class * implements android.view.** {*;}
-keep public class * implements java.util.Observer {*;}
-keep public class * extends android.widget.**{*;}
-keep public class * implements android.widget.** {*;}
-keepattributes *Annotation*,JavascriptInterface




# 播放器SDK
-keep class com.google.gson.stream.**{*;}



# 保持 native 方法不被混淆
-keepclasseswithmembernames class * {
    native <methods>;
}
# 保持自定义控件类不被混淆
-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet);
}
# 保持自定义控件类不被混淆
-keepclasseswithmembernames class * {
    public <init>(android.content.Context, android.util.AttributeSet, int);
}
# 保持枚举 enum 类不被混淆
-keepclassmembers enum * {
    public static **[] values();
    public static ** valueOf(java.lang.String);
}
# 保持 Parcelable 不被混淆
-keep class * implements android.os.Parcelable {
  public static final android.os.Parcelable$Creator *;
}
