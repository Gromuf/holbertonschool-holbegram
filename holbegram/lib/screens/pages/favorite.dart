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
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Favorites", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
        centerTitle: true,
        elevation: 0,
      ),
      body: user == null
          ? const Center(child: CircularProgressIndicator())
          : StreamBuilder(
              // On écoute le document de l'utilisateur pour avoir sa liste de posts sauvés
              stream: FirebaseFirestore.instance.collection('users').doc(user.uid).snapshots(),
              builder: (context, snapshot) {
                if (!snapshot.hasData) return const Center(child: CircularProgressIndicator());

                List savedPostsIds = snapshot.data!['savedPosts'] ?? [];

                if (savedPostsIds.isEmpty) {
                  return const Center(child: Text("No favorites yet"));
                }

                // On récupère les posts dont les IDs sont dans la liste savedPosts
                return FutureBuilder(
                  future: FirebaseFirestore.instance
                      .collection('posts')
                      .where('postId', whereIn: savedPostsIds)
                      .get(),
                  builder: (context, AsyncSnapshot<QuerySnapshot> postSnapshot) {
                    if (!postSnapshot.hasData) return const Center(child: CircularProgressIndicator());

                    return MasonryGridView.count(
                      crossAxisCount: 2,
                      mainAxisSpacing: 4,
                      crossAxisSpacing: 4,
                      itemCount: postSnapshot.data!.docs.length,
                      itemBuilder: (context, index) {
                        var data = postSnapshot.data!.docs[index].data() as Map<String, dynamic>;
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: Image.network(
                            data['postUrl'],
                            fit: BoxFit.cover,
                          ),
                        );
                      },
                    );
                  },
                );
              },
            ),
    );
  }
}