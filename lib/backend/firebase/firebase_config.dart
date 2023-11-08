import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDd8AiMpI7nK_0A5d5GTtsi7ioQpSSMI4w",
            authDomain: "pets-d47fc.firebaseapp.com",
            projectId: "pets-d47fc",
            storageBucket: "pets-d47fc.appspot.com",
            messagingSenderId: "156479223638",
            appId: "1:156479223638:web:78c723cb193b293de208f7",
            measurementId: "G-WESBBTZCG7"));
  } else {
    await Firebase.initializeApp();
  }
}
