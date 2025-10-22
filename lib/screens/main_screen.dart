import 'package:flutter/material.dart';
import '../core/app_colors.dart';
import '../core/app_constants.dart';
import 'home_screen.dart';
import 'shorts_screen.dart';
import 'subscriptions_screen.dart';
import 'profile_screen.dart';

/// Main screen that handles bottom navigation between different pages
/// This is the root screen that contains the bottom navigation bar
class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  /// List of screens corresponding to each bottom navigation tab
  final List<Widget> _screens = const [
    HomeScreen(),
    ShortsScreen(),
    SubscriptionsScreen(),
    ProfileScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Display the selected screen
      body: _screens[_selectedIndex],
      // Bottom navigation bar
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  /// Builds the bottom navigation bar with 4 tabs
  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      currentIndex: _selectedIndex,
      onTap: _onTabTapped,
      selectedItemColor: AppColors.primary,
      unselectedItemColor: AppColors.iconSecondary,
      items: _buildBottomNavigationItems(),
    );
  }

  /// Builds the list of bottom navigation bar items
  List<BottomNavigationBarItem> _buildBottomNavigationItems() {
    const icons = [
      Icons.home,
      Icons.play_arrow,
      Icons.subscriptions,
      Icons.person,
    ];

    return List.generate(
      AppConstants.bottomNavLabels.length,
      (index) => BottomNavigationBarItem(
        icon: Icon(icons[index]),
        label: AppConstants.bottomNavLabels[index],
      ),
    );
  }

  /// Handles tab selection
  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
