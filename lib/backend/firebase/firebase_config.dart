import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDBiQbg7vEodEFdqSj5XxW6J7AxfU39NvE",
            authDomain: "proyecto-6c451.firebaseapp.com",
            projectId: "proyecto-6c451",
            storageBucket: "proyecto-6c451.firebasestorage.app",
            messagingSenderId: "913240447789",
            appId: "1:913240447789:web:2a2b0f295c1196d95851a4",
            measurementId: "G-FYHDLBGX3R"));
  } else {
    await Firebase.initializeApp();
  }
}
