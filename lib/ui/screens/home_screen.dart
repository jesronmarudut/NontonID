import 'package:flutter/material.dart';
import 'package:nontonid/ui/pages/bioskop_page.dart';
import 'package:nontonid/ui/pages/home_pages.dart';
import 'package:nontonid/ui/pages/profil_page.dart';
import 'package:nontonid/ui/pages/tiket_page.dart';
import 'package:nontonid/values/tema.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedIndex = 0;

  List<Widget> bodyWidget = [
    HomePage(),
    TiketPage(),
    BioskopPage(),
    ProfilPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: background1,
      body: bodyWidget[selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        fixedColor: yellowColor,
        // unselectedItemColor: whiteColor,
        currentIndex: selectedIndex,
        onTap: (index) {
          setState(() {
            selectedIndex = index;
          });
        },
        backgroundColor: background2,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_num),
            label: 'Tiket',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.theaters),
            label: 'Bioskop',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profil',
          ),
        ],
      ),
    );
  }
}
