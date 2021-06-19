# firebase_login

 
```
flutter create --org com.eric -i objc -a java firebase_login

flutter build apk --release
```

* choose a project in https://console.firebase.google.com/u/0/ 
* Register new App with package `com.eric.firebase_login`
* get file `google_services.json` at https://console.firebase.google.com/u/0/project/flutterproject-57085/overview
* per 17 juni 21, minimum Android SDK is 23
* drop it into `android/app`
* WAJIB buat SHA fingerprint di package yg udah ditentukan (misal `com.eric.firebase_login`). SHA-1 ini merujuk pada file keystore **DEBUG** atau **PROD** jd pastikan dulu file `.keystore` yg mau diregister.
Kalau debug, flutter menggunakan file yg sama dengan Android Studio.

To get fingerprint, run following :
```
$ keytool -list -v -alias androiddebugkey -keystore %USERPROFILE%\.android\debug.keystore
Enter keystore password: android
...

Certificate fingerprints:
         SHA1: 4F:D1:...
         SHA256: C9:C1:...
```
COPAS the value of SHA1 to related package, ex: `com.eric.firebase_login` :
```
https://console.firebase.google.com/u/0/project/flutterproject-57085/settings/general/android:com.eric.firebase_login
```
Dont forget to SAVE !

android/app/build.gradle
```
apply plugin: 'com.google.gms.google-services'

android {
    defaultConfig {
        minSdkVersion 23
        multiDexEnabled true
    }
```

android/build.gradle
```
buildscript {
    repositories {
        ...
    }

    dependencies {
        ...
        classpath 'com.google.gms:google-services:4.3.8'
    }
```

* goto https://console.firebase.google.com/u/0/project/flutterproject-57085/authentication/providers
    * enable Email/Password
    * enable Google
    * ~~enable Facebook~~


---
## pubspec.yml per 18-Jun-21
```
  firebase_auth:
  firebase_dynamic_links:
  firebase_core:
  google_sign_in:
  flutter_signin_button:
```

## FAT APK
+/- 38 MBytes

---

[![paypal](https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif)](https://www.paypal.me/ellkana)