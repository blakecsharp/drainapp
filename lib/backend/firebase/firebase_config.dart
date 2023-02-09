import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC8Vg4He2kMNBWr6Q8m6WixLzNLJIcgMcw",
            authDomain: "drain-app-database.firebaseapp.com",
            projectId: "drain-app-database",
            storageBucket: "drain-app-database.appspot.com",
            messagingSenderId: "122956323683",
            appId: "1:122956323683:web:e5d7726ea1bf7280d15156",
            measurementId: "G-2Q6ZVR4E68"));
  } else {
    await Firebase.initializeApp();
  }
}
