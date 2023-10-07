import 'package:flutter/material.dart';

class MainScreens extends StatefulWidget {
  const MainScreens({super.key});

  @override
  State<MainScreens> createState() => _MainScreensState();
}

class _MainScreensState extends State<MainScreens> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: const Center(
        child: Text('Hola Mundo'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: selectedIndex,
        onTap: (value) {
          setState(() {
            selectedIndex = value;
          });
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.two_wheeler),
            activeIcon: Icon(Icons.motorcycle),
            label: 'Motors',
            backgroundColor: Colors.amberAccent,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_3_outlined),
            activeIcon: Icon(Icons.person_3),
            label: 'Users',
            backgroundColor: Colors.amber,
          )
        ]),
        
    );
  }
}