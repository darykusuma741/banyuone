// File generated oleh FlutterFire CLI.
// ignore_for_file: lines_longer_than_80_chars, avoid_classes_with_only_static_members
import 'package:firebase_core/firebase_core.dart' show FirebaseOptions;
import 'package:flutter/foundation.dart' show defaultTargetPlatform, kIsWeb, TargetPlatform;

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
    apiKey: 'AIzaSyA...',
    appId: '1:123...',
    messagingSenderId: '123...',
    projectId: 'my-project-id',
    authDomain: 'my-project-id.firebaseapp.com',
    storageBucket: 'my-project-id.appspot.com',
  );

  static const FirebaseOptions android = FirebaseOptions(
    apiKey: 'AIzaSyDZvmBgl49d4Kfw-KGtALVxGa5kjaiplOE',
    appId: '1:874565397861:android:545f36ef46e44adf1d458c',
    messagingSenderId: '874565397861', // Biasanya sama dengan project_number
    projectId: 'banyuone-28fe9',
    storageBucket: 'banyuone-28fe9.firebasestorage.app',
  );

  static const FirebaseOptions ios = FirebaseOptions(
    apiKey: 'AIzaSyA...',
    appId: '1:123...',
    messagingSenderId: '123...',
    projectId: 'my-project-id',
    storageBucket: 'my-project-id.appspot.com',
    iosBundleId: 'com.example.myapp',
  );

  static const FirebaseOptions macos = FirebaseOptions(
    apiKey: 'AIzaSyA...',
    appId: '1:123...',
    messagingSenderId: '123...',
    projectId: 'my-project-id',
    storageBucket: 'my-project-id.appspot.com',
    iosBundleId: 'com.example.myapp',
  );

  static const FirebaseOptions windows = FirebaseOptions(
    apiKey: 'AIzaSyA...',
    appId: '1:123...',
    messagingSenderId: '123...',
    projectId: 'my-project-id',
    authDomain: 'my-project-id.firebaseapp.com',
    storageBucket: 'my-project-id.appspot.com',
  );
}
