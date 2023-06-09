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
    apiKey: 'AIzaSyC79wfTvsZDNKLucwKp8qB8G5Kkoiq2n3o',
    appId: '1:822376515332:web:1a814bde7e93520252f251',
    messagingSenderId: '822376515332',
    projectId: 'todo-app-1ba32',
    authDomain: 'todo-app-1ba32.firebaseapp.com',
    storageBucket: 'todo-app-1ba32.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCvgdYNazrVstTdevd0Me0lrkCEn8jWrXc',
    appId: '1:822376515332:android:e192a74cc354f53952f251',
    messagingSenderId: '822376515332',
    projectId: 'todo-app-1ba32',
    storageBucket: 'todo-app-1ba32.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyARre1XTsBbw016AidvG4HrsN3kOh4kdP8',
    appId: '1:822376515332:ios:bcdf3efa382c80c152f251',
    messagingSenderId: '822376515332',
    projectId: 'todo-app-1ba32',
    storageBucket: 'todo-app-1ba32.appspot.com',
    iosClientId: '822376515332-u74492ckrjbvpnht4b153448jhipjsj9.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyARre1XTsBbw016AidvG4HrsN3kOh4kdP8',
    appId: '1:822376515332:ios:bcdf3efa382c80c152f251',
    messagingSenderId: '822376515332',
    projectId: 'todo-app-1ba32',
    storageBucket: 'todo-app-1ba32.appspot.com',
    iosClientId: '822376515332-u74492ckrjbvpnht4b153448jhipjsj9.apps.googleusercontent.com',
    iosBundleId: 'com.example.todoapp',
  );
}
