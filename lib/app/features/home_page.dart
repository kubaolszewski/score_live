import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var currentIndex = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 32, 31, 31),
      appBar: const CustomAppBar(),
      body: Builder(
        builder: ((context) {
          if (currentIndex == 0) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Home Page',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  )
                ],
              ),
            );
          }

          if (currentIndex == 1) {
            return const Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Competition Page',
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                  )
                ],
              ),
            );
          }
          return const Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Account Page',
                  style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
                )
              ],
            ),
          );
        }),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: const Color.fromARGB(255, 18, 17, 17),
        currentIndex: currentIndex,
        onTap: (newIndex) {
          setState(() {
            currentIndex = newIndex;
          });
        },
        items: const [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.home_filled),
            icon: Icon(
              Icons.home_outlined,
              size: 32,
            ),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.list),
            icon: Icon(
              Icons.list_outlined,
              size: 32,
            ),
            label: 'Competition',
          ),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.person),
            icon: Icon(
              Icons.person_outlined,
              size: 32,
            ),
            label: 'Account',
          ),
        ],
        selectedFontSize: 16,
        unselectedFontSize: 16,
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        unselectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
        selectedItemColor: const Color.fromARGB(255, 215, 54, 108),
        unselectedItemColor: const Color.fromARGB(255, 81, 80, 80),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: const Text(
        'ScoreLive',
        style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
      ),
      automaticallyImplyLeading: true,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back_ios,
          color: Colors.white,
        ),
      ),
      backgroundColor: const Color.fromARGB(255, 18, 17, 17),
    );
  }
}
