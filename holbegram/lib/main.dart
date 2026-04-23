import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:provider/provider.dart'; // Import indispensable
import 'package:holbegram/providers/user_provider.dart';
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
    return MultiProvider( // On ajoute le MultiProvider ici
      providers: [
        ChangeNotifierProvider(create: (_) => UserProvider()),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Holbegram',
        theme: ThemeData(
          primarySwatch: Colors.red,
        ),
        home: LoginScreen(
          emailController: TextEditingController(),
          passwordController: TextEditingController(),
        ),
      ),
    );
  }
}