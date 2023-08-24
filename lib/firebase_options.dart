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
    apiKey: 'AIzaSyDtz0wnHf3qqlDG2XnZFid2oDomd4Y7wJU',
    appId: '1:676918241558:web:e10498f9d4723aee928837',
    messagingSenderId: '676918241558',
    projectId: 'chatapp-9cc7a',
    authDomain: 'chatapp-9cc7a.firebaseapp.com',
    storageBucket: 'chatapp-9cc7a.appspot.com',
    measurementId: 'G-N2BY0DFX57',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDTRwhFIRL-WOhfPiB2TaBXL97lOIQY0uk',
    appId: '1:676918241558:android:ae858c0eb8432a7e928837',
    messagingSenderId: '676918241558',
    projectId: 'chatapp-9cc7a',
    storageBucket: 'chatapp-9cc7a.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDa4-0av_uZYX5Ul-3EMmc-l60FrE8FlwU',
    appId: '1:676918241558:ios:139473af74871f58928837',
    messagingSenderId: '676918241558',
    projectId: 'chatapp-9cc7a',
    storageBucket: 'chatapp-9cc7a.appspot.com',
    iosClientId: '676918241558-gvmqfpkrvug9clcurf10rq68cthr4ef6.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDa4-0av_uZYX5Ul-3EMmc-l60FrE8FlwU',
    appId: '1:676918241558:ios:139473af74871f58928837',
    messagingSenderId: '676918241558',
    projectId: 'chatapp-9cc7a',
    storageBucket: 'chatapp-9cc7a.appspot.com',
    iosClientId: '676918241558-gvmqfpkrvug9clcurf10rq68cthr4ef6.apps.googleusercontent.com',
    iosBundleId: 'com.example.chatApp',
  );
}