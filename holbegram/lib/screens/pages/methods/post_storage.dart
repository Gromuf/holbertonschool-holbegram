import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:holbegram/models/post.dart';
import 'package:holbegram/screens/auth/methods/user_storage.dart'; // Vérifie le chemin (user_storage.dart)
import 'package:uuid/uuid.dart';

class PostStorage {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  Future<String> uploadPost(
    String caption,
    String uid,
    String username,
    String profImage,
    Uint8List image,
  ) async {
    String res = "Some error occurred";
    try {
      // 1. Upload de l'image sur Cloudinary
      // On utilise la méthode existante de ton UserStorage
      String photoUrl = await StorageMethods().uploadImageToCloudinary(image);

      // 2. Génération d'un ID unique pour le post
      String postId = const Uuid().v1();

      // 3. Création de l'objet Post
      Post post = Post(
        caption: caption,
        uid: uid,
        username: username,
        likes: [],
        postId: postId,
        datePublished: DateTime.now(),
        postUrl: photoUrl,
        profImage: profImage,
      );

      // 4. Enregistrement dans Firestore
      await _firestore.collection('posts').doc(postId).set(post.toJson());

      res = "Ok";
    } catch (err) {
      res = err.toString();
    }
    return res;
  }

  Future<void> deletePost(String postId) async {
    try {
      await _firestore.collection('posts').doc(postId).delete();
    } catch (err) {
      print(err.toString());
    }
  }
}