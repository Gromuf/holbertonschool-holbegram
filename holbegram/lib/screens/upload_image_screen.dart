import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:holbegram/methods/auth_methods.dart';
import 'package:holbegram/screens/home_screen.dart';

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
  bool _isLoading = false;

  void selectImageFromGallery() async {
    final ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.gallery);
    if (image != null) {
      Uint8List img = await image.readAsBytes();
      setState(() => _image = img);
    }
  }

  void selectImageFromCamera() async {
    final ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickImage(source: ImageSource.camera);
    if (image != null) {
      Uint8List img = await image.readAsBytes();
      setState(() => _image = img);
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
            
            // AFFICHAGE : Utilisation de widget.username (Remplace John Doe)
            Text(
              "Hello ${widget.username}, sign up to see photos and videos from your friends.",
              textAlign: TextAlign.center,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
            
            const SizedBox(height: 20),
            
            _image != null
                ? CircleAvatar(
                    radius: 70,
                    backgroundImage: MemoryImage(_image!),
                  )
                : Image.asset(
                    "assets/images/inst_logo.png",
                    width: 140,
                    height: 140,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.account_circle, size: 140, color: Colors.grey),
                  ),
            
            const SizedBox(height: 30),
            
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
            
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: SizedBox(
                width: double.infinity,
                height: 48,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(218, 226, 37, 24),
                  ),
                  onPressed: _isLoading ? null : () async {
                    setState(() => _isLoading = true);

                    // APPEL : signUpUser avec les données passées via widget
                    String res = await AuthMethode().signUpUser(
                      email: widget.email,
                      username: widget.username,
                      password: widget.password,
                      file: _image,
                    );

                    if (!mounted) return;
                    setState(() => _isLoading = false);

                    if (res == "success") {
                      // SNACKBAR : Affiche "success" selon la consigne
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text("success")),
                      );

                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (context) => const HomeScreen()),
                        (route) => false,
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text(res)),
                      );
                    }
                  },
                  child: _isLoading 
                    ? const SizedBox(
                        height: 20, 
                        width: 20, 
                        child: CircularProgressIndicator(color: Colors.white, strokeWidth: 2)
                      )
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