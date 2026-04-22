import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:holbegram/methods/auth_methods.dart';
import 'package:holbegram/screens/home_screen.dart'; // Assure-toi que ce fichier existe

class AddPicture extends StatefulWidget {
  final String email;
  final String password;
  final String username;

  const AddPicture({
    super.key,
    required this.email,
    required this.password,
    required this.username,
  });

  @override
  State<AddPicture> createState() => _AddPictureState();
}

class _AddPictureState extends State<AddPicture> {
  Uint8List? _image;
  bool _isLoading = false; // Pour afficher un indicateur de chargement

  // Méthode pour choisir depuis la galerie
  void selectImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      Uint8List img = await image.readAsBytes();
      setState(() {
        _image = img;
      });
    }
  }

  // Méthode pour prendre une photo avec la caméra
  void selectImageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      Uint8List img = await image.readAsBytes();
      setState(() {
        _image = img;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 40),
            const Text(
              "Holbegram",
              style: TextStyle(fontFamily: 'Billabong', fontSize: 50),
            ),
            const SizedBox(height: 20),
            const Text(
              "Hello, sign up to see photos and videos from your friends.",
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),
            
            // Affichage de l'image sélectionnée ou de l'icône par défaut
            _image != null
                ? CircleAvatar(
                    radius: 70,
                    backgroundImage: MemoryImage(_image!),
                  )
                : Image.asset(
                    "assets/images/inst_logo.png",
                    width: 140,
                    height: 140,
                  ),
            
            const SizedBox(height: 30),
            
            // Icônes Caméra et Galerie
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  onPressed: selectImageFromCamera,
                  icon: const Icon(Icons.photo_camera, color: Colors.red, size: 40),
                ),
                IconButton(
                  onPressed: selectImageFromGallery,
                  icon: const Icon(Icons.collections, color: Colors.red, size: 40),
                ),
              ],
            ),
            
            const SizedBox(height: 40),
            
            // Bouton final d'inscription
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(218, 226, 37, 24),
                  ),
                  onPressed: _isLoading 
                    ? null // Désactive le bouton pendant le chargement
                    : () async {
                        setState(() {
                          _isLoading = true;
                        });

                        String res = await AuthMethode().signUpUser(
                          email: widget.email,
                          password: widget.password,
                          username: widget.username,
                          file: _image,
                        );

                        setState(() {
                          _isLoading = false;
                        });

                        if (res == "success") {
                          if (!mounted) return;
                          
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(content: Text("Account Created!")),
                          );

                          // Navigation vers le Home et suppression de la pile d'écrans
                          Navigator.pushAndRemoveUntil(
                            context,
                            MaterialPageRoute(builder: (context) => const HomeScreen()),
                            (route) => false,
                          );
                        } else {
                          if (!mounted) return;
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(res)),
                          );
                        }
                      },
                  child: _isLoading 
                    ? const CircularProgressIndicator(color: Colors.white)
                    : const Text("Next", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}