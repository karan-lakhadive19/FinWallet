import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyC3HH1_PPqfW3sVGBxPQVr3wJAMVTNuHH4",
            authDomain: "finwallet-9c817.firebaseapp.com",
            projectId: "finwallet-9c817",
            storageBucket: "finwallet-9c817.appspot.com",
            messagingSenderId: "986438523398",
            appId: "1:986438523398:web:4d2042f2f0256bab19c187",
            measurementId: "G-DNNH74M10G"));
  } else {
    await Firebase.initializeApp();
  }
}
