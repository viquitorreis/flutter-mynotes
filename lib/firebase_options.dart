// File generated by FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart'
    show defaultTargetPlatform, kIsWeb, TargetPlatform;

/// Default [FirebaseOptions] for use with your Firebase apps.
///
/// Example:
/// ```dart
/// import 'firebase_options.dart';
/// // ...
/// await Firebase.initializeApp(
///   options: DefaultFirebaseOptions.currentPlatform,
/// );
/// ```
class DefaultFirebaseOptions {
  static FirebaseOptions get currentPlatform {
    if (kIsWeb) {
      return web;
    }
    switch (defaultTargetPlatform) {
      case TargetPlatform.android:
        return android;
      case TargetPlatform.iOS:
        return ios;
      case TargetPlatform.macOS:
        return macos;
      case TargetPlatform.windows:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for windows - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      case TargetPlatform.linux:
        throw UnsupportedError(
          'DefaultFirebaseOptions have not been configured for linux - '
          'you can reconfigure this by running the FlutterFire CLI again.',
        );
      default:
        throw UnsupportedError(
          'DefaultFirebaseOptions are not supported for this platform.',
        );
    }
  }

  static const FirebaseOptions web = FirebaseOptions(
    apiKey: 'AIzaSyBzzbL6Q1aB2SV-ujxFfmRNzcsjo23yRXE',
    appId: '1:747519696662:web:2bcdaf10b3272ce383ba37',
    messagingSenderId: '747519696662',
    projectId: 'mynotes-flutter-reisdev',
    authDomain: 'mynotes-flutter-reisdev.firebaseapp.com',
    storageBucket: 'mynotes-flutter-reisdev.appspot.com',
    measurementId: 'G-HEGR4006C8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAUl4RcvOpqrkGQQ-ewVHuPLaGBxyRQvQE',
    appId: '1:747519696662:android:c118556a04aca15283ba37',
    messagingSenderId: '747519696662',
    projectId: 'mynotes-flutter-reisdev',
    storageBucket: 'mynotes-flutter-reisdev.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCj7iB1Doh_LP5cXxigd8IHhM2Vuyvs4k0',
    appId: '1:747519696662:ios:fa3a2159d30f521d83ba37',
    messagingSenderId: '747519696662',
    projectId: 'mynotes-flutter-reisdev',
    storageBucket: 'mynotes-flutter-reisdev.appspot.com',
    iosBundleId: 'io.github.viquitorreis.mynotes',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCj7iB1Doh_LP5cXxigd8IHhM2Vuyvs4k0',
    appId: '1:747519696662:ios:ef587d8e935b04a283ba37',
    messagingSenderId: '747519696662',
    projectId: 'mynotes-flutter-reisdev',
    storageBucket: 'mynotes-flutter-reisdev.appspot.com',
    iosBundleId: 'io.github.viquitorreis.mynotes.RunnerTests',
  );
}
