import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:holbegram/screens/auth/login_screen.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Holbegram',
      // On définit l'écran de démarrage ici
      home: LoginScreen(
        emailController: TextEditingController(),
        passwordController: TextEditingController(),
      ),
    );
  }
}