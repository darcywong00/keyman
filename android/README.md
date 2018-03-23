# Keyman for Android & Keyman Engine for Android

## Prerequisites
* Android Studio 3.0.1+
* Java
* [Node.js](https://nodejs.org/) 8.9+ (for building KeymanWeb)

## Minimum Android Requirements
Keyman for Android has a minSdkVersion of 15 for [Android 4.0.3 Ice Cream Sandwich](https://developer.android.com/about/versions/android-4.0.3.html)

## Setup Android Studio

1. Download [Android Studio](https://developer.android.com/studio/index.html) and install with these [instructions](https://developer.android.com/studio/install.html).
2. For Windows users, set environment variable **ANDROID_HOME** to the location of your Android SDK. The default installation location is **C:\Users\\[USER]\AppData\Local\Android\sdk** where [USER] is your username. You may need to log out and log back in to take effect.

For MacOS/Linux users, add the following to **~/.bashrc** or **~/.bash_profile**
```bash
export ANDROID_HOME=$HOME/Android/Sdk
export PATH=$PATH:$ANDROID_HOME/tools
```
3. For Windows users, from a Git Bash Prompt window, cd to the **sdk/tools/bin** folder and accept all the SDK license agreements
```
yes | ./sdkmanager.bat --licenses
```
4. If you plan to test on a physical device via USB, install the appropriate [OEM USB drivers](https://developer.android.com/studio/run/oem-usb.html)
5. Install [Java SE Development Kit](http://www.oracle.com/technetwork/java/javase/downloads/jdk8-downloads-2133151.html)

## Keyman for Android Development
Keyman for Android (formerly named KMAPro) can be built from a command line (preferred) or Android Studio.

Building Keyman Web is a precursor for compiling KMEA, so verify your system has all the [Minimum Web Compilation Requirements](../web/README.md#minimum-web-compilation-requirements)

### Crashlytics
Firebase Crashlytics is used for crash reporting, and it depends on a configured google-services.json file. For this reason, only the Debug variant of KMAPro is intended to be built on a Developer machine. The analytics for Debug are associated with a "Package name" `com.tavultesoft.kmapro.debug`.

If you need to view near real-time analytics in the Firebase DebugView console, enable Debug mode on the emulator with the command:
```
 adb shell setprop debug.firebase.analytics.app com.tavultesoft.kmapro.debug
```
To disable Debug mode, use the command:
```
adb shell setprop debug.firebase.analytics.app .none.
```
 
### Compiling From Command Line
1. Launch a command prompt
2. Change to one of these directories depending on what you want to compile:
    * For compiling KMEA and KMAPro, cd to the directory **keyman/android**
    * For compiling only KMAPro, cd to the directory **keyman/android/KMAPro**
3. `./build.sh -debug`
4. The APK will be found in **KMAPro/kMAPro/build/outputs/apk/debug/kMAPro-debug.apk**

### Compiling From Android Studio
1. Ensure that [Keyman Engine for Android](#how-to-build-keyman-engine-for-android) is built.
2. Launch Android Studio and import the Gradle project **keyman/android/KMAPro/build.gradle**
3. From the project view, *configure* anything that Gradle reports.
4. Create a run configuration for kMAPro
    1. Select Run --> Edit Configurations...
    2. Select Add New Configuration (+) --> Android App
    3. Change Module to kMAPro
    4. Name your run configuration kMAPro (or as desired)
5. Run your new configuration: Select Run --> Run 'kMAPro'
6. Select a physical device or create a new virtual device to match your target API version

### Running From Command Line
1. Launch a command prompt
2. Ensure that a physical device is connected or an emulator is running.
    1. To list physical devices: `$ANDROID_HOME/platform-tools/adb.exe devices`
    2. To list created emulator devices: `$ANDROID_HOME/tools/emulator.exe -list-avds`
    3. [Create a new virtual device](https://developer.android.com/studio/run/managing-avds.html) if there are no
    existing devices.    
    4. Start an emulator: `$ANDROID_HOME/tools/emulator.exe @nameofemulator`
3. Load the APK: `$ANDROID_HOME/platform-tools/adb.exe install -r path/to/apk.apk`
    * If multiple devices are connected you may need `$ANDROID_HOME/platform-tools/adb.exe install -r -s SERIAL path/to/apk.apk`. Replace `SERIAL` with
       the device serial number listed in step 2.

### Sample Projects

There are two included sample projects that can be modified to test a keyboard.

**android/Samples/KMSample1** app runs a bare Keyman app for testing a keyboard.

**android/Samples/KMSample2** app provides prompts for setting KMSample2 as a system level keyboard.
Both sample apps include a default Tamil keyboard.

Building these projects follow the same steps as KMAPro:

1. Build KMEA
2. cd to the desired KMSample directory
3. `./build.sh`
4. Open Android Studio to run the app

### Tests: KeyboardHarness

**android/Tests/KeyboardHarness** app is a test harness for developers to troubleshoot keyboards.

1. Copy the keyboard js file and applicable ttf fonts to *android/Tests/KeyboardHarness/app/src/main/assets/cloud/*.

   For users of Keyman Engine pre 10.0, use the folders
*android/Tests/KeyboardHarness/app/src/main/assets/languages/* and
*android/Tests/KeyboardHarness/app/src/main/assets/fonts/* respectively.

2. Add the keyboard in *android/Tests/KeyboardHarness/app/src/main/java/com/keyman/android/tests/keyboardHarness/MainActivity.java*
3. cd to android/Tests/KeyboardHarness/
4. `./build.sh`
5. Open Android Studio to run the app

--------------------------------------------------------------

## How to Build Keyman Engine for Android
1. Open a terminal or Git Bash prompt and go to Keyman Engine for Android project folder (e.g. `cd ~/keyman/android/KMEA/`)
2. Run `./build.sh`

Keyman Engine for Android library (**keyman-engine.aar**) is now ready to be imported in any project.

## How to Use Keyman Engine for Android Library

1. Add **keyman-engine.aar** into **[Your project folder]/app/libs/** folder.
    a. We recommend [downloading](https://keyman.com/downloads/#android-engine) the the latest stable release of Keyman Engine and extracting the .aar file.
    b. If you choose to use your own build of the Keyman Engine, get the library from **android/Samples/KMSample1/app/libs/keyman-engine.aar**
2. Open your project in Android Studio.
3. Open **build.gradle** (Module: app) in "Gradle Scripts".
4. After the `android {}` object, include the following:
````gradle
repositories {
    flatDir {
        dirs 'libs'
    }
    google()
}

dependencies {
    implementation fileTree(dir: 'libs', include: ['*.jar'])
    implementation 'com.android.support:appcompat-v7:25.2.0'
    implementation 'com.google.firebase:firebase-core:11.8.0'
    implementation 'com.google.firebase:firebase-crash:11.8.0'
    implementation('com.crashlytics.sdk.android:crashlytics:2.9.0@aar') {
        transitive = true
    }
    api (name:'keyman-engine', ext:'aar')
}

````
5. include `import com.tavultesoft.kmea.*;` to use Keyman Engine in a class.
