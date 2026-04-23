import 'package:flutter/material.dart';
import 'package:holbegram/methods/auth_methods.dart';
import 'package:holbegram/widgets/text_field.dart';
import 'package:holbegram/screens/auth/signup_screen.dart';
import 'package:holbegram/screens/home.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  late bool _passwordVisible;

  @override
  void initState() {
    super.initState();
    _passwordVisible = true;
  }

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 28),
            const Text("Holbegram", style: TextStyle(fontFamily: 'Billabong', fontSize: 50)),
            Image.asset("assets/images/logo.webp", width: 80, height: 60),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  const SizedBox(height: 28),
                  TextFieldInput(
                    controller: emailController,
                    ispassword: false,
                    hintText: "Email",
                    keyboardType: TextInputType.emailAddress,
                  ),
                  const SizedBox(height: 24),
                  TextFieldInput(
                    controller: passwordController,
                    ispassword: !_passwordVisible,
                    hintText: "Password",
                    keyboardType: TextInputType.visiblePassword,
                    suffixIcon: IconButton(
                      icon: Icon(_passwordVisible ? Icons.visibility : Icons.visibility_off),
                      onPressed: () => setState(() => _passwordVisible = !_passwordVisible),
                    ),
                  ),
                  const SizedBox(height: 28),
                  SizedBox(
                    height: 48,
                    width: double.infinity,
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(218, 226, 37, 24),
                      ),
                      onPressed: () async {
                        String res = await AuthMethode().login(
                          email: emailController.text,
                          password: passwordController.text,
                        );
                        if (res == "success") {
                          Navigator.pushReplacement(
                            context,
                            MaterialPageRoute(builder: (context) => const Home()),
                          );
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            SnackBar(content: Text(res)),
                          );
                        }
                      },
                      child: const Text("Log in", style: TextStyle(color: Colors.white)),
                    ),
                  ),
                  const SizedBox(height: 24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("Don't have an account "),
                      TextButton(
                        onPressed: () => Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUp(
                              emailController: TextEditingController(),
                              usernameController: TextEditingController(),
                              passwordController: TextEditingController(),
                              passwordConfirmController: TextEditingController(),
                            ),
                          ),
                        ),
                        child: const Text(
                          "Sign up",
                          style: TextStyle(
                            fontWeight: FontWeight.bold, 
                            color: Color.fromARGB(218, 226, 37, 24),
                          ),
                        ),
                      ),
                    ],
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