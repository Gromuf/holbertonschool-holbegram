import 'package:flutter/material.dart';
import 'package:holbegram/models/user.dart';
import 'package:holbegram/methods/auth_methods.dart';

class UserProvider with ChangeNotifier {
  // Variables privées (Private variables)
  Users? _user; // Correspond au Userd de l'énoncé
  final AuthMethode _authMethode = AuthMethode();

  // Getter pour _user
  Users? get getUser => _user;

  // Méthode pour rafraîchir l'utilisateur
  Future<void> refreshUser() async {
    // On appelle getUserDetails depuis AuthMethode
    Users user = await _authMethode.getUserDetails();
    
    // On met à jour la variable privée
    _user = user;
    
    // On notifie les widgets qui écoutent (ChangeNotifier)
    notifyListeners();
  }
}