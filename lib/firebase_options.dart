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
    apiKey: 'AIzaSyDv6qZufrvPKXfRjyQwnW9vySca44qps70',
    appId: '1:890196364154:web:68cfc99f39a621be98a4c3',
    messagingSenderId: '890196364154',
    projectId: 'fir-2ac03',
    authDomain: 'fir-2ac03.firebaseapp.com',
    storageBucket: 'fir-2ac03.appspot.com',
    measurementId: 'G-0ZST1FXPPY',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyCpxxqd5MObts7mpMoQbpruFmW6qyhnDmA',
    appId: '1:890196364154:android:0b42e6d2aad97bcd98a4c3',
    messagingSenderId: '890196364154',
    projectId: 'fir-2ac03',
    storageBucket: 'fir-2ac03.appspot.com',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyB0M-TgG7oYtAol6HQKDvBJm-qDdqtxQ7M',
    appId: '1:890196364154:ios:a778162d9275510798a4c3',
    messagingSenderId: '890196364154',
    projectId: 'fir-2ac03',
    storageBucket: 'fir-2ac03.appspot.com',
    iosClientId: '890196364154-fmedm1sks0l9d048cb1npigjr7i4bjlt.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebase',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyB0M-TgG7oYtAol6HQKDvBJm-qDdqtxQ7M',
    appId: '1:890196364154:ios:cb4b2249773b441798a4c3',
    messagingSenderId: '890196364154',
    projectId: 'fir-2ac03',
    storageBucket: 'fir-2ac03.appspot.com',
    iosClientId: '890196364154-kqug52e3630bjaq6ar69cidodj4r2tbf.apps.googleusercontent.com',
    iosBundleId: 'com.example.firebase.RunnerTests',
  );
}
