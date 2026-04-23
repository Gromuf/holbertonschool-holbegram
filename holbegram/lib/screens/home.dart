import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:holbegram/providers/user_provider.dart';
import 'package:holbegram/widgets/bottom_nav.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    // Appelé dès que l'écran Home est inséré dans l'arbre des widgets
    updateUser();
  }

  /// Récupère les données de l'utilisateur depuis Firestore 
  /// et les stocke dans le Provider pour que ProfileScreen y ait accès.
  void updateUser() async {
    // listen: false est obligatoire dans l'initState
    UserProvider userProvider = Provider.of<UserProvider>(context, listen: false);
    await userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    // Une fois les données en cours de récupération, on affiche la navigation
    return const BottomNav();
  }
}