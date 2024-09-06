import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'profil.dart';
import 'users.dart';
import 'home.dart';
import 'Tickets.dart';

class Adminnav extends StatefulWidget {
  const Adminnav({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<Adminnav> {
  int _selectedIndfinal = 0;

  List<Widget> _page = [
    Home(),
    Users(),
    Profil(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndfinal = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _page[_selectedIndfinal],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.blue, // Utiliser une couleur solide
        unselectedItemColor: Colors.grey,
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            //icon: Icon(FontAwesomeIcons.house),
            icon: Image.asset(
              "Assets/Icons/home.png",
                width: 26,
                height: 26,
                color: _selectedIndfinal == 0 ? Colors.blue : Colors.grey,
            ),
            label: "Home",
          ),
          BottomNavigationBarItem(
            //icon: Icon(FontAwesomeIcons.house),
            icon: Image.asset(
              "Assets/Icons/users.png",
              width: 26,
              height: 26,
              color: _selectedIndfinal == 1 ? Colors.blue : Colors.grey,
            ),
            label: "Utilisateurs",
          ),
          BottomNavigationBarItem(
            //icon: Icon(FontAwesomeIcons.house),
            icon: Image.asset(
              "Assets/Icons/profil.png",
              width: 26,
              height: 26,
              color: _selectedIndfinal == 3 ? Colors.blue : Colors.grey,
            ),
            label: "Profil",
          ),
        ],
        currentIndex: _selectedIndfinal,
        onTap: _onItemTap,
      ),
    );
  }
}
