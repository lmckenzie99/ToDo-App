import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDEuvwy_LuCIbFzzrRo5q8PZguLu7ooc3w",
            authDomain: "to-do-029frk.firebaseapp.com",
            projectId: "to-do-029frk",
            storageBucket: "to-do-029frk.firebasestorage.app",
            messagingSenderId: "304471150938",
            appId: "1:304471150938:web:00903feff7186a5ff5e363",
            measurementId: "G-BDCBBPKTZ6"));
  } else {
    await Firebase.initializeApp();
  }
}
