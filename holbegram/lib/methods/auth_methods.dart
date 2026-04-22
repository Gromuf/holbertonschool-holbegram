import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:holbegram/models/user.dart';

class AuthMethode {
  final firebase_auth.FirebaseAuth _auth = firebase_auth.FirebaseAuth.instance;
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> login({
    required String email,
    required String password,
  }) async {
    String res = "Some error occurred";
    try {
      if (email.isEmpty || password.isEmpty) {
        return "Please fill all the fields";
      }
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      res = "success";
    } catch (e) {
      res = e.toString();
    }
    return res;
  }

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

      firebase_auth.UserCredential userCredential =
          await _auth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      Users users = Users(
        uid: userCredential.user!.uid,
        email: email,
        username: username,
        bio: "",
        photoUrl: "",
        followers: [],
        following: [],
        posts: [],
        saved: [],
        searchKey: username.isEmpty ? "" : username[0].toUpperCase(),
      );

      await _firestore
          .collection("users")
          .doc(userCredential.user!.uid)
          .set(users.toJson());

      res = "success";
    } catch (err) {
      res = err.toString();
    }
    return res;
  }
}