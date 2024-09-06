import 'package:cloud_firestore/cloud_firestore.dart';
import "package:flutter/material.dart";
import 'CustomTextField.dart';
import 'package:firebase_core/firebase_core.dart';  // Importer Firebase Core
import 'package:firebase_auth/firebase_auth.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  late bool pass = true;
  final _auth = FirebaseAuth.instance;
  late String email;
  late String password;
  @override
  Widget build(BuildContext context) {
    double largeur = MediaQuery.of(context).size.width;
    double hauteur = MediaQuery.of(context).size.height;

    final TextEditingController emailController = TextEditingController();
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              width : 220,
              height: 220,
              child: Image.asset(
                "Assets/Images/lendPageIllust.png",
                fit: BoxFit.fill,
              ),
            ),
            SizedBox(
              height: largeur * 0.021,
            ),
            Container(
              width: largeur * 0.95,
              padding: EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
              //color: Colors.blue,
              child: Column(
                children: [
                  SizedBox(height: 16.0),
                  CustomTextField(
                    labelText: 'Email',
                    hintText: 'Entrez votre email',
                    controller: emailController,
                    prefixIcon: Icons.email,
                    keyboardType: TextInputType.emailAddress,
                    onChanged: (value) {
                      email = value;
                    },
                  ),
                  const SizedBox(height: 16.0),
                  CustomTextField(
                    labelText: 'Mot de passe',
                    hintText: 'Entrez votre mot de passe',
                    isPassword: true,
                    prefixIcon: Icons.lock,
                    suffixIcon: pass? Icons.visibility_off: Icons.visibility,
                    onChanged: (value) {
                      password = value;
                    },
                  ),
                  const SizedBox(
                    height: 16.0,
                  ),
                  SizedBox(
                    width: double.infinity,
                    height: 52,
                    child: ElevatedButton(
                      onPressed: () async {
                        UserCredential user = await _auth.signInWithEmailAndPassword(email: email, password: password);
                        DocumentSnapshot users = await FirebaseFirestore.instance.collection("users").doc(user.user!.uid).get();
                        if(users["role"] == "Admin") {
                          Navigator.pushNamed(context, "/adminnav");
                        }
                        if(users["role"] == "Formateur") {
                          Navigator.pushNamed(context, "/formateurNav");
                        }
                        if(users["role"] == "Apprenant") {
                          Navigator.pushNamed(context, "/apprenantNav");
                        }else {
                          print("error");
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Color(0xFF1E90FF),
                        padding: EdgeInsets.symmetric(horizontal: 18, vertical: 7),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        )
                      ),
                      child: const Text(
                        "Se connecter",
                        style: TextStyle(
                            color: Color(0xFFFFFFFF),
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            fontFamily: "Nunito"
                        ),
                      )
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}