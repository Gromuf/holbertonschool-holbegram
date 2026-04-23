import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:provider/provider.dart';
import 'package:holbegram/providers/user_provider.dart';
import 'package:holbegram/models/user.dart';
import 'package:holbegram/screens/pages/methods/post_storage.dart';
import 'package:holbegram/screens/home.dart';
import 'package:holbegram/utils/posts.dart'; 

class AddImage extends StatefulWidget {
  const AddImage({super.key});
  @override
  State<AddImage> createState() => _AddImageState();
}

class _AddImageState extends State<AddImage> {
  Uint8List? _file;
  final TextEditingController _captionController = TextEditingController();
  bool _isLoading = false;

  void selectImage(BuildContext context) async {
    return showDialog(
      context: context,
      builder: (context) => SimpleDialog(
        title: const Text('Create a Post'),
        children: [
          SimpleDialogOption(
            padding: const EdgeInsets.all(20),
            child: const Text('Take a photo'),
            onPressed: () async {
              Navigator.of(context).pop();
              Uint8List? file = await pickImage(ImageSource.camera);
              if (file != null) setState(() => _file = file);
            },
          ),
          SimpleDialogOption(
            padding: const EdgeInsets.all(20),
            child: const Text('Choose from gallery'),
            onPressed: () async {
              Navigator.of(context).pop();
              Uint8List? file = await pickImage(ImageSource.gallery);
              if (file != null) setState(() => _file = file);
            },
          ),
          SimpleDialogOption(
            padding: const EdgeInsets.all(20),
            child: const Text('Cancel'),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
    );
  }

  void postImage(String uid, String username, String profImage) async {
    if (_file == null) {
      showSnackBar(context, "Please select an image");
      return;
    }
    setState(() => _isLoading = true);
    try {
      String res = await PostStorage().uploadPost(
        _captionController.text,
        uid,
        username,
        profImage,
        _file!,
      );

      if (res == "Ok") {
        setState(() => _isLoading = false);
        if (mounted) {
          showSnackBar(context, "Posted!");
          Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(builder: (context) => const Home()),
            (route) => false,
          );
        }
      } else {
        setState(() => _isLoading = false);
        if (mounted) showSnackBar(context, res);
      }
    } catch (e) {
      setState(() => _isLoading = false);
      showSnackBar(context, e.toString());
    }
  }

  @override
  void dispose() {
    _captionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Users? user = Provider.of<UserProvider>(context).getUser;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: const Text("Add Image", style: TextStyle(color: Colors.black)),
        actions: [
          TextButton(
            onPressed: () => user != null ? postImage(user.uid, user.username, user.photoUrl) : null,
            child: const Text("Post", style: TextStyle(color: Colors.redAccent, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            if (_isLoading) const LinearProgressIndicator(color: Colors.red),
            const SizedBox(height: 20),
            const Text("Add Image", style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
            Padding(
              padding: const EdgeInsets.all(20),
              child: TextField(
                controller: _captionController,
                decoration: const InputDecoration(hintText: "Write a caption..."),
                maxLines: 3,
              ),
            ),
            GestureDetector(
              onTap: () => selectImage(context),
              child: Container(
                width: 250, 
                height: 250, 
                color: Colors.grey[200],
                child: _file == null
                    ? Image.asset(
                        "assets/images/add_img.png", // Utilisation de l'image locale
                        fit: BoxFit.contain,
                      )
                    : Image.memory(
                        _file!, 
                        fit: BoxFit.cover,
                      ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}