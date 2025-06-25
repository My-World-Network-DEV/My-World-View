import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyD6kMp0O6yRCSl07N0gIMkqeSp_MJUVp9o",
            authDomain: "mwn-my-world-view.firebaseapp.com",
            projectId: "mwn-my-world-view",
            storageBucket: "mwn-my-world-view.firebasestorage.app",
            messagingSenderId: "341156357073",
            appId: "1:341156357073:web:a716a2231c72849874b6f0",
            measurementId: "G-ZS942K23SR"));
  } else {
    await Firebase.initializeApp();
  }
}
