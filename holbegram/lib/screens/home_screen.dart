import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String username = "";
  String photoUrl = "";
  bool isLoading = true;

  @override
  void initState() {
    super.initState();
    getUserData();
  }

  // Fonction pour récupérer les données réelles de Firestore
  void getUserData() async {
    try {
      // 1. On récupère l'ID de l'utilisateur actuellement connecté
      String uid = FirebaseAuth.instance.currentUser!.uid;

      // 2. On va chercher son document dans la collection 'users'
      var userSnap = await FirebaseFirestore.instance
          .collection('users')
          .doc(uid)
          .get();

      if (userSnap.exists) {
        setState(() {
          username = userSnap.data()?['username'] ?? "Utilisateur";
          photoUrl = userSnap.data()?['photoUrl'] ?? "";
          isLoading = false;
        });
      }
    } catch (e) {
      print("Erreur lors de la récupération des données : $e");
      setState(() {
        isLoading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
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
              // Optionnel : Rediriger vers l'écran de login après déconnexion
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator(color: Colors.red))
          : Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Affichage de la photo de profil venant de Cloudinary
                  photoUrl != ""
                      ? CircleAvatar(
                          radius: 60,
                          backgroundImage: NetworkImage(photoUrl),
                        )
                      : const Icon(Icons.account_circle, size: 120),
                  
                  const SizedBox(height: 20),
                  
                  Text(
                    "Bienvenue, $username !",
                    style: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  
                  const Text(
                    "Tu es maintenant connecté à ton feed.",
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
    );
  }
}