import 'package:flutter/material.dart';
import 'package:smollan_assignment/features/home/views/home_page.dart';
import 'package:smollan_assignment/features/new_post/views/new_post_screen.dart';
import 'package:smollan_assignment/features/profile/views/profile_screen.dart';
import 'package:smollan_assignment/features/reels/views/reels_screen.dart';
import 'package:smollan_assignment/features/search/search_screen.dart';
import '../widgets/nav_bar/bottom_nav_bar.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  final List<Widget> _screens = [
    HomePage(),
    SearchScreen(),
    NewPostScreen(),
    ReelsScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: IndexedStack(
        index: _selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: _selectedIndex,
        onItemTapped: _onItemTapped,
      ),
    );
  }
}

