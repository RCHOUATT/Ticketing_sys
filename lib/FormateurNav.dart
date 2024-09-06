import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'profil.dart';
import 'users.dart';
import 'home.dart';
import 'Tickets.dart';

class FormateurNav extends StatefulWidget {
  const FormateurNav({super.key});

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<FormateurNav> {
  int _selectedIndfinal = 0;

  List<Widget> _page = [
    Tickets(),
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
              "Assets/Icons/tickets.png",
              width: 26,
              height: 26,
              color: _selectedIndfinal == 2 ? Colors.blue : Colors.grey,
            ),
            label: "Tickets",
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
