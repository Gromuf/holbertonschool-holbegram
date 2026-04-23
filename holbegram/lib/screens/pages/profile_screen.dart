import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:holbegram/providers/user_provider.dart';
import 'package:holbegram/models/user.dart';
import 'package:holbegram/screens/auth/login_screen.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  int postLen = 0;

  @override
  void initState() {
    super.initState();
    _fetchPostCount();
  }

  void _fetchPostCount() async {
    try {
      final user = Provider.of<UserProvider>(context, listen: false).getUser;
      if (user != null) {
        var snap = await FirebaseFirestore.instance
            .collection('posts')
            .where('uid', isEqualTo: user.uid)
            .get();
        if (mounted) {
          setState(() {
            postLen = snap.docs.length;
          });
        }
      }
    } catch (e) {
      debugPrint(e.toString());
    }
  }

  @override
  Widget build(BuildContext context) {
    final Users? user = Provider.of<UserProvider>(context).getUser;

    return user == null
        ? const Center(child: CircularProgressIndicator(color: Colors.red))
        : Scaffold(
            backgroundColor: Colors.white,
            appBar: AppBar(
              backgroundColor: Colors.white,
              elevation: 0,
              title: const Text(
                'Profile',
                style: TextStyle(color: Colors.black, fontFamily: 'Billabong', fontSize: 32),
              ),
              actions: [
                IconButton(
                  icon: const Icon(Icons.logout, color: Colors.black),
                  onPressed: () async {
                    await FirebaseAuth.instance.signOut();
                    if (context.mounted) {
                      Navigator.of(context).pushReplacement(
                        MaterialPageRoute(builder: (context) => const LoginScreen()),
                      );
                    }
                  },
                ),
              ],
            ),
            body: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 40,
                            backgroundImage: NetworkImage(user.photoUrl),
                          ),
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                _buildStatItem(postLen, "posts"),
                                _buildStatItem(0, "followers"),
                                _buildStatItem(0, "following"),
                              ],
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 15),
                      Text(user.username, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
                    ],
                  ),
                ),
                const Divider(thickness: 1),
                Expanded(
                  child: StreamBuilder(
                    stream: FirebaseFirestore.instance
                        .collection('posts')
                        .where('uid', isEqualTo: user.uid)
                        .snapshots(),
                    builder: (context, snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(child: CircularProgressIndicator());
                      }
                      if (!snapshot.hasData || (snapshot.data! as QuerySnapshot).docs.isEmpty) {
                        return const Center(child: Text("No posts yet"));
                      }

                      return GridView.builder(
                        padding: const EdgeInsets.all(2),
                        itemCount: (snapshot.data! as QuerySnapshot).docs.length,
                        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                          crossAxisCount: 3,
                          crossAxisSpacing: 2,
                          mainAxisSpacing: 2,
                        ),
                        itemBuilder: (context, index) {
                          DocumentSnapshot snap = (snapshot.data! as QuerySnapshot).docs[index];
                          return Image.network(snap['postUrl'], fit: BoxFit.cover);
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          );
  }

  Widget _buildStatItem(int value, String label) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(value.toString(), style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        Text(label, style: const TextStyle(fontSize: 14, color: Colors.grey)),
      ],
    );
  }
}