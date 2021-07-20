# enstack

### DI pattern
`Dependency Injection` is a great design pattern that allows us to eliminate rigid dependencies between elements and it makes the application more flexible, easy to expand scales and maintain.
In the project we use Plugin `get_it` to implement DI and we have also defined classes so you can easily implement `DI` in the `DI layer`.
##### injection
Inject modules
##### module
     * Declare the modules used in the project.
     * All modules must extend "DIModule"
     * The registers must be set in the func provides.
     * When you want to call 1 DI just use the syntax. "getIt<My Component>()"
     * Learn more about "get_it"

### Routes
The project has predefined Named routes RouteDefine + manifest
##### 1. RouteDefine
     * All routes must extend this class.
     * When extending, you will have to override func "initRoute", here you will define your routes.
     * A feature may have multiple routes with different input arguments.
     * Make sure that the ID of each route in your project is unique.
##### 2. manifest - `lib/manifest.dart`
     *  To add a route to the project you just need to declare in the func "generateRoute". Each route will be provided with a func "build", you must call it in the func "generateRoute" of "manifest" to register.
### Network.
     * Project can use retrofit to work with the alternative network for http.
     * Retrofit is pre-installed in the "ApiModule.dart". You can customize it here
     * All interceptors are defined in the /configuration/lib/network/interceptor/* class
     * To work with Certificate, please refer to the "/configuration/lib/network/http_overrides.dart" class, with the default the project accept badCertificate

### Development environment settings.
     * All flavor environments are installed in the "/configuration/lib/environment/buid_config.dart" class.
     * Basically we are defining 4 development environments: development, staging, preprod and release.
     * Run App

You can run the app using the commands

```
## development: flutter run -t lib/main.dart --debug --flavor development

## staging: flutter run -t lib/main.dart --debug --flavor staging

## preprod: flutter run -t lib/main.dart --debug --flavor product
```

##### Build App
You can build the app using the commands

for Android

```
## development: flutter build apk -t lib/main.dart --flavor development

## staging: flutter build apk -t lib/main.dart --flavor staging

## preprod: flutter build apk -t lib/main.dart --flavor product
```

for IOS

```
## development flutter build ios -t lib/main.dart --flavor development

## staging: flutter build ios -t lib/main.dart --flavor staging

## preprod: flutter build ios -t lib/main.dart --flavor product
```

### resources
      * All resources (images, fonts, videos, ...) must be placed in the assets class
      * Before using them, please declare the path in utility class and the suffix of the class to be type_provide (image_provide.dart)

###create splash

```
flutter pub run flutter_native_splash:create
flutter pub run flutter_launcher_icons:main
```

### Getting started
Get dependencies and generate necessary files.
```
npm run init
```
We'll handle the generation of required files for 🚀 your onboarding!

### Json parsing / serialization
This project is implementing [json_serializable](https://pub.dev/packages/json_serializable).
It use build_runner to generate files. If you make a change to these files, you need to re-run the generator using build_runner:
```
flutter pub run build_runner build
```
generator using build_runner and remove conflict file :
```
npm run generate
```

## Indentation.
- Auto indentation handled with git hook using [Lefthook](https://github.com/Arkweid/lefthook).
- For mac users, run `npm run setup` and you should be done. More details below.
- This project use npm for [Lefthook](https://github.com/Arkweid/lefthook) installation, to ease others getting it up running fast - run `npm install`
- After installation, run `npx lefthook install` to finish up installation.
- More info [here](https://github.com/Arkweid/lefthook/blob/master/docs/node.md).

### Localization
Using this library to handle multi-languages. Follow this guide to understand and config languages files

#### Setup Step :

* VSC, AS, IJ users need to install the plugins from the market.
* vs-code: https://marketplace.visualstudio.com/items?itemName=localizely.flutter-intl
* intelliJ / android studio: https://plugins.jetbrains.com/plugin/13666-flutter-intl

* others/CLI:
```
flutter pub global activate intl_utils

flutter pub global run intl_utils:generate
```

### Initialize plugins (IntelliJ reference)
1. Open Flutter intl in `Action`
2. Click on `arb File`

![image](screenshots/intl_prompt.png)

3. To add / remove Locale, choose `Add Locale` / `Remove Locale`
4. Then it will promp which locale

![image](./screenshots/intl_add_locale.png)

**Current available locale is en, en**


Link library : https://pub.dev/packages/intl_utils
