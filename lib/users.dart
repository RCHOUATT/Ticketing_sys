import 'dart:ui';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

import 'CustomTextField.dart';

class Users extends StatefulWidget {

  @override
  State<StatefulWidget> createState() => _UsersState();
}

class _UsersState extends State<Users>{

  String nom1 = "";
  String email1 = "";
  String prenom1 = "";
  String id1 = "";
  String tel1 = "";
  String role1 = "";

  @override
  Widget build(BuildContext context) {

  bool option = false;
  final TextEditingController searchUser = TextEditingController();
  double largeur = MediaQuery.of(context).size.width;
  late String searchValue;
  late bool pass = true;

  return Scaffold(
    body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 18),
        width: double.infinity,
        height: double.infinity,
        color: const Color(0xFFE3EDFD),
        child: LayoutBuilder(
          builder: (context, constraints){
            double width = constraints.maxWidth;
            double heigth = constraints.maxHeight;
            return
              SingleChildScrollView(
                scrollDirection: Axis.vertical,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 13, 0, 0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                          width: constraints.maxWidth,
                          height: 60,
                          padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                          decoration: BoxDecoration(
                              color: Color(0xFFFFFFFF),
                              borderRadius: BorderRadius.circular(15)
                          ),
                          child: LayoutBuilder(
                            builder: (context, constraints){
                              double width1 = constraints.maxWidth;
                              double heigth1 = constraints.maxHeight;
                              return
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Container(
                                      width: width1 * 0.67,
                                      child: TextField(
                                        maxLines: 1,
                                        controller: searchUser,
                                        keyboardType: TextInputType.text,
                                        onChanged: (value) {
                                          searchValue = value;
                                        },
                                        decoration: InputDecoration(
                                          hintText: "searchValue",
                                          prefixIcon: Icon(Icons.search),
                                          contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                                          floatingLabelAlignment: FloatingLabelAlignment.center,
                                          border: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                            ),
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                            borderSide: const BorderSide(
                                              color: Colors.transparent,
                                            ),
                                            borderRadius: BorderRadius.circular(10.0),
                                          ),
                                        ),
                                        style: const TextStyle(
                                          color: Colors.black,
                                          fontSize: 16,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: width1 * 0.127,
                                      child: TextButton(
                                        onPressed: (){
                                          Navigator.pushNamed(context, "/chatAll");
                                        },
                                        child: Image.asset(
                                          "Assets/Icons/notification.png",
                                          color: const Color(0xFFFE5C73),
                                        ),
                                      ),
                                    ),
                                    GestureDetector(
                                      onTap:(){
                                        Navigator.pushNamed(context, "/profil");
                                      },
                                      child: Container(
                                        width: width1 * 0.152,
                                        child: CircleAvatar(
                                          radius: 50,
                                          child: ClipOval(
                                            child: Image.asset(
                                              "Assets/Images/profil.png",
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                );
                            },
                          )
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 30,
                            margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 13),
                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  width: 250,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      SizedBox(
                                        width: 80,
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                            backgroundColor: const Color(0xFF16DBCC),
                                            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 5),
                                            shape: RoundedRectangleBorder(
                                              borderRadius: BorderRadius.circular(5),
                                            )
                                          ),
                                          onPressed: (){
                                            showDialog(
                                              context: context,
                                              barrierDismissible: true,
                                              builder: (BuildContext context){
                                                return FormDialog();
                                              }
                                            );
                                          },
                                          child: const Text(
                                            "Ajouter",
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            style: TextStyle(
                                              color: Color(0xFF000000),
                                              fontSize: 12,
                                              fontWeight: FontWeight.bold,
                                              fontFamily: "Nunito"
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                              width: double.infinity,
                              height: heigth * 0.23,
                              margin: const EdgeInsets.fromLTRB(0, 0, 0, 13),
                              padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                              decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Expanded(
                                      flex: 2,
                                      child: Container(
                                          width: double.infinity,
                                          height: double.infinity,
                                          child: LayoutBuilder(
                                            builder: (context, constraints){
                                              double width = constraints.maxWidth;
                                              double height = constraints.maxHeight;
                                              return SingleChildScrollView(
                                                scrollDirection: Axis.vertical,
                                                child: Wrap(
                                                  direction: Axis.horizontal,
                                                  spacing: width * 0.10,
                                                  runSpacing: 14,
                                                  children: [
                                                    Container(
                                                      width: width * 0.445,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          const Text(
                                                            "Nom",
                                                            overflow: TextOverflow.ellipsis,
                                                            maxLines: 1,
                                                            style: TextStyle(
                                                              fontFamily: "Nunito",
                                                              fontWeight: FontWeight.w900,
                                                              fontSize: 16,
                                                            ),
                                                          ),
                                                          Text(
                                                            nom1,
                                                            overflow: TextOverflow.ellipsis,
                                                            maxLines: 1,
                                                            style: const TextStyle(
                                                              fontFamily: "Nunito",
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: width * 0.445,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          const Text(
                                                            "Prenom",
                                                            overflow: TextOverflow.ellipsis,
                                                            maxLines: 1,
                                                            style: TextStyle(
                                                              fontFamily: "Nunito",
                                                              fontWeight: FontWeight.w900,
                                                              fontSize: 16,
                                                            ),
                                                          ),
                                                          Text(
                                                            prenom1,
                                                            overflow: TextOverflow.ellipsis,
                                                            maxLines: 1,
                                                            style: const TextStyle(
                                                              fontFamily: "Nunito",
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: width * 0.445,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          const Text(
                                                            "ID",
                                                            overflow: TextOverflow.ellipsis,
                                                            maxLines: 1,
                                                            style: TextStyle(
                                                              fontFamily: "Nunito",
                                                              fontWeight: FontWeight.w900,
                                                              fontSize: 16,
                                                            ),
                                                          ),
                                                          Text(
                                                            id1,
                                                            overflow: TextOverflow.ellipsis,
                                                            maxLines: 1,
                                                            style: const TextStyle(
                                                              fontFamily: "Nunito",
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: width * 0.445,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          const Text(
                                                            "Email",
                                                            overflow: TextOverflow.ellipsis,
                                                            maxLines: 1,
                                                            style: TextStyle(
                                                              fontFamily: "Nunito",
                                                              fontWeight: FontWeight.w900,
                                                              fontSize: 16,
                                                            ),
                                                          ),
                                                          Text(
                                                            email1,
                                                            overflow: TextOverflow.ellipsis,
                                                            maxLines: 1,
                                                            style: const TextStyle(
                                                              fontFamily: "Nunito",
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: width * 0.445,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          const Text(
                                                            "Tel",
                                                            overflow: TextOverflow.ellipsis,
                                                            maxLines: 1,
                                                            style: const TextStyle(
                                                              fontFamily: "Nunito",
                                                              fontWeight: FontWeight.w900,
                                                              fontSize: 16,
                                                            ),
                                                          ),
                                                          Text(
                                                            tel1,
                                                            overflow: TextOverflow.ellipsis,
                                                            maxLines: 1,
                                                            style: const TextStyle(
                                                              fontFamily: "Nunito",
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Container(
                                                      width: width * 0.445,
                                                      child: Column(
                                                        mainAxisAlignment: MainAxisAlignment.start,
                                                        crossAxisAlignment: CrossAxisAlignment.start,
                                                        children: [
                                                          const Text(
                                                            "Rôle",
                                                            overflow: TextOverflow.ellipsis,
                                                            maxLines: 1,
                                                            style: TextStyle(
                                                              fontFamily: "Nunito",
                                                              fontWeight: FontWeight.w900,
                                                              fontSize: 16,
                                                            ),
                                                          ),
                                                          Text(
                                                            role1,
                                                            overflow: TextOverflow.ellipsis,
                                                            maxLines: 1,
                                                            style: const TextStyle(
                                                              fontFamily: "Nunito",
                                                              fontWeight: FontWeight.w500,
                                                              fontSize: 14,
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              );
                                            },
                                          )
                                      )
                                  )
                                ],
                              )
                          )
                        ],
                      ),
                      StreamBuilder(
                          stream: FirebaseFirestore.instance.collection("users").snapshots(),
                          builder: (contex, snapshot){
                            if(snapshot.connectionState == ConnectionState.waiting){
                              return const CircularProgressIndicator(
                                backgroundColor: Colors.white,
                                strokeWidth: 4,
                                color: Color(0xFF0E90FF),
                              );
                            };
                            if(snapshot.hasError){
                              return Center(child: Text("Erreur ${snapshot.error}"));
                            };
                            final users = snapshot.data!.docs;
                            return Container(
                                width: double.infinity,
                                height: heigth * 0.568,
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                child: SingleChildScrollView(
                                  scrollDirection: Axis.vertical,
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: users.map((user){

                                      final nom = user["nom"].toString();
                                      final email = user["email"].toString();
                                      final prenom = user["prenom"].toString();
                                      final id = user.id.toString();
                                      final tel = user["tel"].toString();
                                      final role = user["role"].toString();
                                      return
                                        TextButton(
                                          onPressed: () {
                                            setState(() {
                                              nom1 = nom;
                                              email1 = email;
                                              id1 = id;
                                              tel1 = tel;
                                              prenom1 = prenom;
                                              role1 = role;
                                              print("nom $nom1");
                                              print("email $email1");
                                              print("id $id1");
                                              print("tel $tel1");
                                              print("prenom $prenom1");
                                              print("prenom $role1");
                                            });
                                          },
                                          style: TextButton.styleFrom(
                                              padding: const EdgeInsets.all(0),
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.circular(0),
                                              )
                                          ),
                                          child: Container(
                                            width: double.infinity,
                                            height: 50,
                                            child: LayoutBuilder(
                                              builder: (context, constraints){
                                                double width = constraints.maxWidth;
                                                double height = constraints.maxHeight;
                                                return Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  crossAxisAlignment: CrossAxisAlignment.center,
                                                  children: [
                                                    CircleAvatar(
                                                      backgroundColor: const Color(0xFF0E90FF),
                                                      child: Text(email.substring(0,1).toUpperCase(),
                                                      style: const TextStyle(
                                                        color: Colors.white,
                                                        fontSize: 16,
                                                        fontWeight: FontWeight.w800,
                                                        fontFamily: "Nunito",
                                                      ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width : width * 0.28,
                                                      child: Text(
                                                        email,
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
                                                        style: const TextStyle(
                                                          fontSize: 14,
                                                          fontFamily: 'Nunito',
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                    Container(
                                                      width : width * 0.3,
                                                      child: Text(
                                                        role,
                                                        overflow: TextOverflow.ellipsis,
                                                        maxLines: 1,
                                                        style: TextStyle(
                                                          color: role == "Apprenant"? const Color(0xFF1E90FF): role == "Formateur"? const Color(0xFFFF700F) : const Color(
                                                              0xFFC22323),
                                                          fontSize: 14,
                                                          fontFamily: 'Nunito',
                                                          fontWeight: FontWeight.w500,
                                                        ),
                                                      ),
                                                    ),
                                                    PopupMenuButton<String>(
                                                        iconColor: Color(0xFF0E90FF),
                                                        popUpAnimationStyle: AnimationStyle(
                                                          curve: Curves.easeInCirc,
                                                          duration: Duration(milliseconds: 110),
                                                        ),
                                                        color: Color(0xFFFFFFFF),
                                                        onSelected: (value){
                                                          print("mon choix $value");
                                                        },
                                                        itemBuilder: (BuildContext context){
                                                          return[
                                                            const PopupMenuItem(
                                                                value: "update",
                                                                child: Text("Mise à jour")
                                                            ),
                                                            const PopupMenuItem(
                                                                value: "Supprimer",
                                                                child: Text("Supprimer")
                                                            ),
                                                            const PopupMenuItem(
                                                                value: "Discuter",
                                                                child: Text("Discuter")
                                                            ),
                                                          ];
                                                        },
                                                        offset: Offset(width * -0.0697, height * 0.138)
                                                    ),
                                                    /*TextButton(
                                        onPressed: ()  {
                                          option = true;
                                        },
                                        child: Image.asset(
                                          "Assets/Icons/options.png",
                                          color: Colors.blue,
                                        ),

                                      )*/
                                                  ],
                                                );
                                              },
                                            ),
                                          ),
                                        );
                                    }).toList(),
                                  ),
                                )
                            );
                          }
                      ),
                    ],
                  ),
                ),
              );
          },
        )
    ),
  );
  }
}


class FormDialog extends StatelessWidget {

  FormDialog({super.key});

  final TextEditingController username = TextEditingController();
  final TextEditingController prenom = TextEditingController();
  final TextEditingController tel = TextEditingController();
  final TextEditingController email = TextEditingController();
  final String password = "Orange@2024";

  String? selectedRole = "Apprenant";

  @override
  Widget build(BuildContext context) {

    return Dialog(
      backgroundColor: Color(0xFFFFFFFF),
      child: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          height: MediaQuery.of(context).size.height * 0.7,
          padding: const EdgeInsets.all(25),
          child: LayoutBuilder(
              builder: (context, constraints){
                double width = constraints.maxWidth;
                double heigth = constraints.maxHeight;
                return Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: double.infinity,
                      height: heigth * 0.16,
                      //color: Colors.grey,
                      constraints: const BoxConstraints(
                        minWidth: 79,
                      ),
                      child:Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "Rôle",
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w900,
                                fontFamily: "Nunito",
                              ),
                            ),
                            DropdownButtonFormField<String>(
                              value: selectedRole,
                              decoration: InputDecoration(
                                contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                    borderSide: const BorderSide(
                                      //color: Colors.grey
                                    )
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Colors.grey,
                                  ),
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                              ),
                              items: const [
                                DropdownMenuItem(
                                  value: "Apprenant",
                                  child: const Text(
                                    "Apprenant",
                                  ),
                                ),
                                DropdownMenuItem(
                                  value: "Formateur",
                                  child: const Text(
                                    "Formateur",
                                  ),
                                ),
                              ],
                              onChanged: (value) {
                                selectedRole = value;
                                print("mon choix $selectedRole");
                              },
                            )
                          ]
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: heigth * 0.158,
                      //color: Colors.grey,
                      constraints: const BoxConstraints(
                        minWidth: 79,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Nom",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              fontFamily: "Nunito",
                            ),
                          ),
                          TextField(
                            maxLines: 1,
                            controller: username,
                            keyboardType: TextInputType.name,
                            onChanged: (value) {
                            },
                            decoration: InputDecoration(
                              hintText: "Le nom de l'utilisateur, ici ...",
                              contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                    //color: Colors.grey
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],

                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: heigth * 0.158,
                      //color: Colors.grey,
                      constraints: const BoxConstraints(
                        minWidth: 79,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Prénom",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              fontFamily: "Nunito",
                            ),
                          ),
                          TextField(
                            maxLines: 1,
                            controller: prenom,
                            keyboardType: TextInputType.name,
                            onChanged: (value) {
                            },
                            decoration: InputDecoration(
                              hintText: "Le prénom de l'utilisateur, ici ...",
                              contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                    //color: Colors.grey
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],

                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: heigth * 0.158,
                      //color: Colors.grey,
                      constraints: const BoxConstraints(
                        minWidth: 79,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Tel",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              fontFamily: "Nunito",
                            ),
                          ),
                          TextField(
                            maxLines: 1,
                            controller: tel,
                            keyboardType: TextInputType.phone,
                            onChanged: (value) {
                            },
                            decoration: InputDecoration(
                              hintText: "Le numéro de téléphone de l'utilisateur, ici ...",
                              contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                    //color: Colors.grey
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: heigth * 0.158,
                      //color: Colors.grey,
                      constraints: const BoxConstraints(
                        minWidth: 79,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Email",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w900,
                              fontFamily: "Nunito",
                            ),
                          ),
                          TextField(
                            maxLines: 1,
                            controller: email,
                            keyboardType: TextInputType.emailAddress,
                            onChanged: (value) {
                            },
                            decoration: InputDecoration(
                              hintText: "L'email de l'utilisateur, ici ...",
                              contentPadding: const EdgeInsets.symmetric(horizontal: 5, vertical: 0),
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                  borderSide: const BorderSide(
                                    //color: Colors.grey
                                  )
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                              focusedBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.grey,
                                ),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            style: const TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: heigth * 0.0729,
                      //color: Colors.grey,
                      constraints: const BoxConstraints(
                        minWidth: 79,
                      ),
                      child: ElevatedButton(
                        onPressed: () async{
                          try{
                            print("mon choix2 $selectedRole");
                            String role = selectedRole.toString();
                            print("mon choix3 $role");
                            creationCompte(email.text, password, role, tel.text, username.text, prenom.text);
                          }catch (e){
                            print(e);
                          }
                          print("mon choix1 $selectedRole");
                          Navigator.pop(context);
                        },
                        style:  ElevatedButton.styleFrom(
                          backgroundColor: const Color(0xFF0E90FF),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10),
                          )
                        ),
                        child: const Text(
                          "Valider",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            fontWeight: FontWeight.w900,
                            fontFamily: "Nunito",
                          ),
                        ),

                      )
                    ),
                  ],
                );
              }
          ),
        ),
      ),
    );
  }
}


void creationCompte(email, password, role, tel, nom, prenom) async{
  UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(email: email, password: password);
  await FirebaseFirestore.instance.collection("users").doc(userCredential.user?.uid).set({
    "email": email,
    "role" : role,
    "tel": tel,
    "nom": nom,
    "prenom": prenom,
  });
}