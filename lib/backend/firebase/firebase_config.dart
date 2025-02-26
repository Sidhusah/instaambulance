import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC0NBAFN5HYhyvGOVhDYXFAsWaB0ioCvTc",
            authDomain: "insta-ambulance-711f2.firebaseapp.com",
            projectId: "insta-ambulance-711f2",
            storageBucket: "insta-ambulance-711f2.firebasestorage.app",
            messagingSenderId: "1046841396540",
            appId: "1:1046841396540:web:bdac8ca585ca30e3cae239",
            measurementId: "G-6MKN0W8E25"));
  } else {
    await Firebase.initializeApp();
  }
}
