import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smollan_assignment/features/home/views/home_page.dart';
import 'package:smollan_assignment/features/new_post/views/new_post_screen.dart';
import 'package:smollan_assignment/features/profile/views/user_profile_screen.dart';
import 'package:smollan_assignment/features/reels/views/reels_screen.dart';
import 'package:smollan_assignment/features/search/search_screen.dart';
import '../widgets/nav_bar/bottom_nav_bar.dart';
import '../providers/tab_provider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Widget> _screens = [
    HomePage(),
    SearchScreen(),
    NewPostScreen(),
    ReelsScreen(),
    UserProfileScreen(username: 'Smollan')
  ];

  @override
  Widget build(BuildContext context) {
    final tabProvider = Provider.of<TabProvider>(context);

    return Scaffold(
      extendBody: true,
      backgroundColor: Colors.transparent,
      body: IndexedStack(
        index: tabProvider.selectedIndex,
        children: _screens,
      ),
      bottomNavigationBar: CustomBottomNavBar(
        selectedIndex: tabProvider.selectedIndex,
        onItemTapped: (index) => tabProvider.setTab(index),
      ),
    );
  }
}
