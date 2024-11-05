# Orozco Driver

## Build (release)
### .env file
```shell
# project root
cp .env.example .env
# fill in the variables
```

### Update version
Update the `version` in `pubspec.yaml` if needed

## Android-specific build (release)
### Signing key
Add the following to the end of `android/local.properties`:  
```properties
# Keystore properties
release.storeFile=/path/to/key.jks
release.storePassword=
release.keyAlias=
release.keyPassword=
```

### FCM (push notifications)
Place `google-services.json` into `android/app/`

### JDK
> Needed for multi-project local setup, especially when projects target different SDK levels  
> The following setup is for macOS & Android Studio. Probably similar for Ubuntu, and is unknown for Windows  

This project requires JDK v17, so it can be set using:  
```shell
# assuming $JAVA_HOME is managed by jenv
flutter config --jdk-dir $JAVA_HOME
```

### Run the build
```shell
flutter clean && flutter build appbundle --release
```

## iOS-specific build (release)
TODO
