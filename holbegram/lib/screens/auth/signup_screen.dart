import 'package:flutter/material.dart';
import 'package:holbegram/widgets/text_field.dart';
import 'package:holbegram/screens/upload_image_screen.dart'; // Import de ton nouvel écran

class SignUp extends StatefulWidget {
  final TextEditingController emailController;
  final TextEditingController usernameController;
  final TextEditingController passwordController;
  final TextEditingController passwordConfirmController;

  const SignUp({
    super.key,
    required this.emailController,
    required this.usernameController,
    required this.passwordController,
    required this.passwordConfirmController,
  });

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool _passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 28),
            const Text(
              "Holbegram",
              style: TextStyle(fontFamily: 'Billabong', fontSize: 50),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 28),
                  TextFieldInput(
                    controller: widget.emailController,
                    ispassword: false,
                    hintText: "Email",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 24),
                  TextFieldInput(
                    controller: widget.usernameController,
                    ispassword: false,
                    hintText: "Username",
                    keyboardType: TextInputType.text,
                  ),
                  const SizedBox(height: 24),
                  TextFieldInput(
                    controller: widget.passwordController,
                    ispassword: _passwordVisible,
                    hintText: "Password",
                    keyboardType: TextInputType.visiblePassword,
                    suffixIcon: IconButton(
                      icon: Icon(_passwordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                      onPressed: () =>
                          setState(() => _passwordVisible = !_passwordVisible),
                    ),
                  ),
                  const SizedBox(height: 24),
                  TextFieldInput(
                    controller: widget.passwordConfirmController,
                    ispassword: _passwordVisible,
                    hintText: "Confirm Password",
                    keyboardType: TextInputType.visiblePassword,
                  ),
                  const SizedBox(height: 28),
                  SizedBox(
                    height: 48,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(218, 226, 37, 24),
                      ),
                      onPressed: () {
                        // 1. Vérification des champs vides
                        if (widget.emailController.text.isEmpty ||
                            widget.usernameController.text.isEmpty ||
                            widget.passwordController.text.isEmpty) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Please fill all the fields")),
                          );
                          return;
                        }

                        // 2. Vérification de la correspondance des mots de passe
                        if (widget.passwordController.text !=
                            widget.passwordConfirmController.text) {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text("Passwords do not match")),
                          );
                          return;
                        }

                        // 3. Navigation vers l'écran suivant (AddPicture)
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => AddPicture(
                              email: widget.emailController.text,
                              username: widget.usernameController.text,
                              password: widget.passwordController.text,
                            ),
                          ),
                        );
                      },
                      child: const Text("Sign up",
                          style: TextStyle(color: Colors.white)),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}