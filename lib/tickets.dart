import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'CustomTextField.dart';

class Tickets extends StatelessWidget {
  const Tickets({super.key});


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
          builder: (context, constraints) {
            double width = constraints.maxWidth;
            double height = constraints.maxHeight;
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
                                        child: Image.asset(
                                          "Assets/Icons/notification.png",
                                          color: const Color(0xFFFE5C73),
                                        ),
                                        onPressed: (){
                                          Navigator.pushNamed(context, "/chatAll");
                                        },
                                      ),
                                    ),
                                    Container(
                                      width: width1 * 0.152,
                                      child: GestureDetector(
                                        onTap: (){
                                          Navigator.pushNamed(context, "profil");
                                        },
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
                      Container(
                        width: 393,
                        height: height * 0.23,
                        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                        margin: const EdgeInsets.fromLTRB(0, 13, 0, 13),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15)
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                                flex: 1,
                                child: Container(
                                  margin: const EdgeInsets.fromLTRB(0, 0, 30, 0),
                                  child:  GestureDetector(
                                    onTap: (){
                                      Navigator.pushNamed(context, "profil");
                                    },
                                    child: CircleAvatar(
                                      radius: 50,
                                      child: ClipOval(
                                        child: Image.asset(
                                          "Assets/Images/profil.png",
                                          fit: BoxFit.fill,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                            ),
                            Expanded(
                                flex: 2,
                                child: Container(
                                    width: double.infinity,
                                    height: double.infinity,
                                    child: SingleChildScrollView(
                                      scrollDirection: Axis.vertical,
                                      child: Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            margin: EdgeInsets.fromLTRB(0, 0, 0, 14),
                                            child: const Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Titre :",
                                                  style: TextStyle(
                                                    color: Color(0xFF718EBF),
                                                    fontSize: 16,
                                                    fontFamily: "Nunito",
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                                ),
                                                Text(
                                                  "Titre du ticket",
                                                  style: TextStyle(
                                                    color: Color(0xFF232323),
                                                    fontSize: 14,
                                                    fontFamily: "Nunito",
                                                    fontWeight: FontWeight.w500,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                          Container(
                                            child: const Column(
                                              mainAxisAlignment: MainAxisAlignment.start,
                                              crossAxisAlignment: CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Description :",
                                                  style: TextStyle(
                                                    color: Color(0xFF718EBF),
                                                    fontSize: 16,
                                                    fontFamily: "Nunito",
                                                    fontWeight: FontWeight.w900,
                                                  ),
                                                ),
                                                Text(
                                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Proin quis  purus quam. Maecenas mauris tortor, congue id semper sed, semper eu  eros. Nullam commodo lacinia ante sed malesuada. Praesent vulputate ex  id neque faucibus eleifend. Mauris commodo odio urna, blandit  ullamcorper metus laoreet et. In hac habitasse platea dictumst. Proin  aliquet finibus lectus, sit amet porttitor tellus mattis ut. Duis id  consectetur dui. Donec congue faucibus justo, nec posuere dolor  consequat quis. Ut elit quam, lacinia non erat venenatis, egestas  pulvinar est. Quisque vel nulla sem. Cras pellentesque justo risus,  vitae interdum justo auctor a. Integer vel nibh nunc. Donec feugiat  ultrices tortor eget hendrerit.",
                                                  style: TextStyle(
                                                    color: Color(0xFF232323),
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
                                    )
                                )
                            )
                          ],
                        )
                    ),
                      Container(
                          width: double.infinity,
                          height: height * 0.63,
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: SingleChildScrollView(
                            scrollDirection: Axis.vertical,
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      padding: const EdgeInsets.all(0),
                                      foregroundColor: const Color(0xFF232323),
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
                                              child: ClipOval(
                                                child: Image.asset(
                                                  "Assets/Images/profil.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width : width * 0.34,
                                              child: const Text(
                                                "Titre du ticket",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Nunito',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width : width * 0.3,
                                              child: const Text(
                                                "En cours",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                  color: Color(0xFF718EBF),
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
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      padding: const EdgeInsets.all(0),
                                      foregroundColor: const Color(0xFF232323),
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
                                              child: ClipOval(
                                                child: Image.asset(
                                                  "Assets/Images/profil.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width : width * 0.34,
                                              child: const Text(
                                                "Titre du ticket",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Nunito',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width : width * 0.3,
                                              child: const Text(
                                                "Résolu",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                  color: Color(0xFF16DBCC),
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
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ),
                                TextButton(
                                  onPressed: () {},
                                  style: TextButton.styleFrom(
                                      padding: const EdgeInsets.all(0),
                                      foregroundColor: const Color(0xFF232323),
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
                                              child: ClipOval(
                                                child: Image.asset(
                                                  "Assets/Images/profil.png",
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width : width * 0.34,
                                              child: const Text(
                                                "Titre du ticket",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                  fontSize: 14,
                                                  fontFamily: 'Nunito',
                                                  fontWeight: FontWeight.w500,
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width : width * 0.3,
                                              child: const Text(
                                                "Attente",
                                                overflow: TextOverflow.ellipsis,
                                                maxLines: 1,
                                                style: TextStyle(
                                                  color: Color(0xFFFF74A5),
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
                                          ],
                                        );
                                      },
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          )
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
