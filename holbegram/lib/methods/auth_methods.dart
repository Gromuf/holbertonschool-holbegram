import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:holbegram/models/user.dart';
import 'package:holbegram/screens/auth/methods/user_storage.dart';
import 'dart:convert';

class AuthMethode {
  final firebase_auth.FirebaseAuth _auth = firebase_auth.FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  // AJOUT : Méthode pour obtenir les détails de l'utilisateur actuel
  Future<Users> getUserDetails() async {
    firebase_auth.User currentUser = _auth.currentUser!;

    DocumentSnapshot snap =
        await _firestore.collection('users').doc(currentUser.uid).get();

    return Users.fromSnap(snap);
  }

  // Connexion
  Future<String> login({
    required String email,
    required String password,
  }) async {
    String res = "Some error occurred";
    try {
      if (email.isEmpty || password.isEmpty) return "Please fill all the fields";
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      res = "success";
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

  // Inscription avec Image
  Future<String> signUpUser({
    required String email,
    required String password,
    required String username,
    Uint8List? file,
  }) async {
    String res = "Some error occurred";
    try {
      if (email.isEmpty || password.isEmpty || username.isEmpty) {
        return "Please fill all the fields";
      }

      // 1. Création de l'utilisateur dans Auth
      firebase_auth.UserCredential userCredential = await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      // 2. Upload de l'image sur Cloudinary
      String photoUrl = "";
      if (file != null) {
        photoUrl = await StorageMethods().uploadImageToStorage(
          false,
          "profilePics",
          file,
        );
      }

      // 3. Création de l'objet User
      Users users = Users(
        uid: userCredential.user!.uid,
        email: email,
        username: username,
        bio: "",
        photoUrl: photoUrl,
        followers: [],
        following: [],
        posts: [],
        saved: [],
        searchKey: username[0].toUpperCase(),
      );

      // 4. Sauvegarde dans Firestore
      await _firestore.collection("users").doc(userCredential.user!.uid).set(users.toJson());

      res = "success";
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}