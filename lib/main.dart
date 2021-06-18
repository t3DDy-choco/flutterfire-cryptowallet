import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'ui/authentication.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized(); //  ensures the App initialization
  await Firebase.initializeApp(); //  Initializes Firebase
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Crypto Wallet',
      home: Authentication(), //  returns Authentication widget
    );
  }
}
