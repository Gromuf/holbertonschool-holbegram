import 'dart:typed_data';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:holbegram/models/posts.dart';
import 'package:holbegram/screens/auth/methods/user_storage.dart'; 
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
      // ORDRE CORRIGÉ : (bool, String, Uint8List)
      String photoUrl = await StorageMethods().uploadImageToStorage(true, 'posts', image);

      String postId = const Uuid().v1();

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

  void savePost(String postId, String uid) async {
    try {
      DocumentSnapshot snap = await FirebaseFirestore.instance.collection('users').doc(uid).get();
      List savedPosts = (snap.data() as dynamic)['savedPosts'] ?? [];

      if (savedPosts.contains(postId)) {
        await FirebaseFirestore.instance.collection('users').doc(uid).update({
          'savedPosts': FieldValue.arrayRemove([postId])
        });
      } else {
        await FirebaseFirestore.instance.collection('users').doc(uid).update({
          'savedPosts': FieldValue.arrayUnion([postId])
        });
      }
    } catch (e) {
      print(e.toString());
    }
  }
}