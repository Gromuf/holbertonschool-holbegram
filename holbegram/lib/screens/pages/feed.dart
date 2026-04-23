import 'package:flutter/material.dart';

class Feed extends StatelessWidget {
  const Feed({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            const Text(
              "Holbegram",
              style: TextStyle(
                fontFamily: 'Billabong',
                fontSize: 32,
                color: Colors.black,
              ),
            ),
            const SizedBox(width: 5),
            Image.asset(
              "assets/images/logo.webp",
              filterQuality: FilterQuality.high,
              width: 40,
              height: 40,
            ),
          ],
        ),
        actions: [
          Row(
            children: [
              IconButton(
                icon: const Icon(Icons.add_box_outlined, color: Colors.black),
                onPressed: () {},
              ),
              IconButton(
                icon: const Icon(Icons.send_outlined, color: Colors.black),
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
      body: const Posts(),
    );
  }
}

// Widget temporaire pour éviter l'erreur de compilation en attendant sa création
class Posts extends StatelessWidget {
  const Posts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text("Posts Widget Placeholder"),
    );
  }
}