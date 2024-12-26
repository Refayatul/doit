import 'package:doit/home_screen.dart';
import 'package:flutter/material.dart';
import 'home_screen.dart'; // Import the WordScreen
import 'favourite_screen.dart'; // Import the FavouriteScreen
import 'settings_screen.dart'; // Import the SettingsScreen

void main() {
  runApp(
    const MaterialApp(
      home: HomePage(),
    ),
  );
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  final List<Widget> _screens = [
    const HomeScreen(),
    const FavouriteScreen(),
    const SettingsScreen(),
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green[600],
        title: const Text("Stateful Widgets"),
      ),
      body: _screens[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_max_outlined), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.favorite_sharp), label: 'Favourite'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings_applications_outlined),
              label: 'Settings')
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.green[600],
        unselectedItemColor: Colors.grey,
      ),
    );
  }
}
