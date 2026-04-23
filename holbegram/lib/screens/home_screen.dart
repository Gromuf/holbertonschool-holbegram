import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:holbegram/providers/user_provider.dart';
import 'package:holbegram/models/user.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
  @override
  void initState() {
    super.initState();
    // On demande au Provider de charger les données de l'utilisateur dès le début
    addData();
  }

  // Fonction pour rafraîchir l'utilisateur via le Provider
  void addData() async {
    UserProvider userProvider = Provider.of<UserProvider>(context, listen: false);
    await userProvider.refreshUser();
  }

  @override
  Widget build(BuildContext context) {
    // On récupère les données de l'utilisateur stockées dans le Provider
    final Users? user = Provider.of<UserProvider>(context).getUser;

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Holbegram",
          style: TextStyle(fontFamily: 'Billabong', fontSize: 32),
        ),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            onPressed: () async {
              await FirebaseAuth.instance.signOut();
              // Retour au login après déconnexion si nécessaire
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      // Si l'utilisateur n'est pas encore chargé, on affiche un loader
      body: user == null
          ? const Center(child: CircularProgressIndicator(color: Colors.red))
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Photo de profil dynamique via le Provider
                  user.photoUrl != ""
                      ? CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(user.photoUrl),
                        )
                      : const Icon(Icons.account_circle, size: 120),
                  
                  const SizedBox(height: 20),
                  
                  Text(
                    "Bienvenue, ${user.username} !",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  const Text(
                    "Tu es maintenant connecté à ton feed via Provider.",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
    );
  }
}