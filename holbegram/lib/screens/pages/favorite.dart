import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:holbegram/providers/user_provider.dart';
import 'package:holbegram/models/user.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class Favorite extends StatelessWidget {
  const Favorite({super.key});

  @override
  Widget build(BuildContext context) {
    final Users? user = Provider.of<UserProvider>(context).getUser;

    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text(
          "Favorites",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: user == null
          ? const Center(child: CircularProgressIndicator())
          : StreamBuilder<DocumentSnapshot>(
              stream: FirebaseFirestore.instance
                  .collection('users')
                  .doc(user.uid)
                  .snapshots(),
              builder: (context, snapshot) {
                if (snapshot.hasError) {
                  return const Center(child: Text("An error occurred"));
                }

                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const Center(child: CircularProgressIndicator());
                }

                // --- CORRECTION ICI ---
                // On récupère les données sous forme de Map
                var userData = snapshot.data?.data() as Map<String, dynamic>?;

                // On vérifie si la clé 'savedPosts' existe, sinon on met une liste vide
                List savedPostsIds = (userData != null && userData.containsKey('savedPosts'))
                    ? userData['savedPosts']
                    : [];
                // -----------------------

                if (savedPostsIds.isEmpty) {
                  return const Center(child: Text("No favorites yet"));
                }

                return FutureBuilder(
                  future: FirebaseFirestore.instance
                      .collection('posts')
                      .where('postId', whereIn: savedPostsIds)
                      .get(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> postSnapshot) {
                    if (postSnapshot.connectionState == ConnectionState.waiting) {
                      return const Center(child: CircularProgressIndicator());
                    }

                    if (!postSnapshot.hasData || postSnapshot.data!.docs.isEmpty) {
                      return const Center(child: Text("No posts found"));
                    }

                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: MasonryGridView.count(
                        crossAxisCount: 2,
                        mainAxisSpacing: 8,
                        crossAxisSpacing: 8,
                        itemCount: postSnapshot.data!.docs.length,
                        itemBuilder: (context, index) {
                          var data = postSnapshot.data!.docs[index].data() as Map<String, dynamic>;
                          return ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.network(
                              data['postUrl'],
                              fit: BoxFit.cover,
                              errorBuilder: (context, error, stackTrace) =>
                                  const Icon(Icons.broken_image),
                            ),
                          );
                        },
                      ),
                    );
                  },
                );
              },
            ),
    );
  }
}