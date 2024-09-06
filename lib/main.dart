import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'AccueillPage.dart';
import 'ApprenantNav.dart';
import 'ChatRoom.dart';
import 'FormateurNav.dart';
import 'Login.dart';
import 'profil.dart';
import 'users.dart';
import 'home.dart';
import 'AdminNav.dart';
import 'ChatAll.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const TicketingSyst());
}

class TicketingSyst extends StatelessWidget{
  const TicketingSyst ({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "My ticketing system",
      initialRoute: "/",
      routes: {
        "/": (context) => const Accueil(),
        "/login" : (context) => const Login(),
        "/home" : (context) => const Home(),
        "/adminnav" : (context) => Adminnav(),
        "/apprenantNav" : (context) => ApprenantNav(),
        "/formateurNav" : (context) => FormateurNav(),
        "/users" : (context) => Users(),
        "/profil" : (context) => const Profil(),
        "/chatAll" : (context) => const Chatall(),
        "/chatRoom" : (context) => const ChatRoom(),
      },
    );
  }

}

