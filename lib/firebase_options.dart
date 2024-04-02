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
    apiKey: 'AIzaSyAA1YhnXJ64QvRDSyjhFvtm5nqMlCS6bFo',
    appId: '1:476168020622:web:c102b118082fd276c15fdf',
    messagingSenderId: '476168020622',
    projectId: 'chatapp-b6d82',
    authDomain: 'chatapp-b6d82.firebaseapp.com',
    storageBucket: 'chatapp-b6d82.appspot.com',
    measurementId: 'G-M9749MSGN8',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyChIjYiSttc09vmItsaDlEfM9lSS1ZDcZA',
    appId: '1:476168020622:android:f1aedea2ab8a48dcc15fdf',
    messagingSenderId: '476168020622',
    projectId: 'chatapp-b6d82',
    storageBucket: 'chatapp-b6d82.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyDJ7HziqCLcwyJd951Xhjtmhr_2uydR-vc',
    appId: '1:476168020622:ios:35645dd50ee35619c15fdf',
    messagingSenderId: '476168020622',
    projectId: 'chatapp-b6d82',
    storageBucket: 'chatapp-b6d82.appspot.com',
    iosBundleId: 'com.example.chatApp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyDJ7HziqCLcwyJd951Xhjtmhr_2uydR-vc',
    appId: '1:476168020622:ios:2263fb4ba8765874c15fdf',
    messagingSenderId: '476168020622',
    projectId: 'chatapp-b6d82',
    storageBucket: 'chatapp-b6d82.appspot.com',
    iosBundleId: 'com.example.chatApp.RunnerTests',
  );
}
