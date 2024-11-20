// File generated by FlutterFire CLI.
// ignore_for_file: type=lint
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
        return windows;
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
    apiKey: 'AIzaSyB7Nqzpe9WtF3mH06I26DmgK7rs3_OJyOc',
    appId: '1:349702139952:web:6a4f1a1fe24d5c085cbdf5',
    messagingSenderId: '349702139952',
    projectId: 'clean-swift-95ce1',
    authDomain: 'clean-swift-95ce1.firebaseapp.com',
    storageBucket: 'clean-swift-95ce1.firebasestorage.app',
    measurementId: 'G-KRW27YWQND',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyAskffIoBpWQprxs4rX5fhNoHTb3B7fz8o',
    appId: '1:349702139952:android:35f649d3f9b7a7045cbdf5',
    messagingSenderId: '349702139952',
    projectId: 'clean-swift-95ce1',
    storageBucket: 'clean-swift-95ce1.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyAx_-O2ptM4JMat4luaAbqC7vqNNCZo4yU',
    appId: '1:349702139952:ios:8be279c32284b5415cbdf5',
    messagingSenderId: '349702139952',
    projectId: 'clean-swift-95ce1',
    storageBucket: 'clean-swift-95ce1.firebasestorage.app',
    iosBundleId: 'com.example.cleanShift',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyAx_-O2ptM4JMat4luaAbqC7vqNNCZo4yU',
    appId: '1:349702139952:ios:8be279c32284b5415cbdf5',
    messagingSenderId: '349702139952',
    projectId: 'clean-swift-95ce1',
    storageBucket: 'clean-swift-95ce1.firebasestorage.app',
    iosBundleId: 'com.example.cleanShift',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyB7Nqzpe9WtF3mH06I26DmgK7rs3_OJyOc',
    appId: '1:349702139952:web:8cc88cf729fce28c5cbdf5',
    messagingSenderId: '349702139952',
    projectId: 'clean-swift-95ce1',
    authDomain: 'clean-swift-95ce1.firebaseapp.com',
    storageBucket: 'clean-swift-95ce1.firebasestorage.app',
    measurementId: 'G-NRQMGBME6D',
  );
}
