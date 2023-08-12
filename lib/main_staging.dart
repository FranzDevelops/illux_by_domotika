import 'package:firebase_core/firebase_core.dart'; // Import Firebase package
import 'package:flutter/material.dart';
import 'package:illux_by_domotika/app/app.dart';
import 'package:illux_by_domotika/bootstrap.dart';
import 'package:illux_by_domotika/firebase/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding
      .ensureInitialized(); // Ensure that the Flutter bindings are initialized
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  await bootstrap(() => const App());
}
