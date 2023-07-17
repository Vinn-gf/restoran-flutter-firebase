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
    apiKey: 'AIzaSyDn8R-gUPvq53fs81697UgCSDvgMQsSpe4',
    appId: '1:577580443101:web:05a579772e5a58fba48234',
    messagingSenderId: '577580443101',
    projectId: 'kelompok2-firebase-f21b7',
    authDomain: 'kelompok2-firebase-f21b7.firebaseapp.com',
    storageBucket: 'kelompok2-firebase-f21b7.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDJQ31Pd1wDe4eRwHuHH0mGcAoYkpyrglk',
    appId: '1:577580443101:android:89b7a7afc2da3166a48234',
    messagingSenderId: '577580443101',
    projectId: 'kelompok2-firebase-f21b7',
    storageBucket: 'kelompok2-firebase-f21b7.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyCIJWQU58jbGAveKRN64rusJbN4zk_5ERY',
    appId: '1:577580443101:ios:1877c5a66d4f16f7a48234',
    messagingSenderId: '577580443101',
    projectId: 'kelompok2-firebase-f21b7',
    storageBucket: 'kelompok2-firebase-f21b7.appspot.com',
    androidClientId: '577580443101-9i9l6vj1vr8jdl6ta2a4ib1b45dblbpe.apps.googleusercontent.com',
    iosClientId: '577580443101-el0520mcv33koidklcmomcga7svehcjj.apps.googleusercontent.com',
    iosBundleId: 'com.kelompok2.restoFirebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyCIJWQU58jbGAveKRN64rusJbN4zk_5ERY',
    appId: '1:577580443101:ios:1877c5a66d4f16f7a48234',
    messagingSenderId: '577580443101',
    projectId: 'kelompok2-firebase-f21b7',
    storageBucket: 'kelompok2-firebase-f21b7.appspot.com',
    androidClientId: '577580443101-9i9l6vj1vr8jdl6ta2a4ib1b45dblbpe.apps.googleusercontent.com',
    iosClientId: '577580443101-el0520mcv33koidklcmomcga7svehcjj.apps.googleusercontent.com',
    iosBundleId: 'com.kelompok2.restoFirebase',
  );
}