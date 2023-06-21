import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:score_live/app/custom_widgets/custom_app_bar.dart';

class LandingPage extends StatefulWidget {
  const LandingPage({
    super.key,
  });

  @override
  State<LandingPage> createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  var currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 18, 17, 17),
      appBar: const CustomAppBar(),
      body: const RouterOutlet(),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_filled),
            icon: Icon(Icons.home_outlined, size: 32),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.list),
            icon: Icon(Icons.table_rows_outlined, size: 32),
            label: 'Competition',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person),
            icon: Icon(Icons.person_outlined, size: 32),
            label: 'Account',
          ),
        ],
        backgroundColor: const Color.fromARGB(255, 18, 17, 17),
        selectedFontSize: 16,
        unselectedFontSize: 16,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, color: Color.fromARGB(255, 81, 80, 80)),
        selectedItemColor: const Color.fromARGB(255, 215, 54, 108),
        unselectedItemColor: const Color.fromARGB(255, 81, 80, 80),
      ),
    );
  }
}
