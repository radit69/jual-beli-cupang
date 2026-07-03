import 'package:flutter/material.dart';
import 'home_screen.dart';
import 'catalog_screen.dart';
import 'cart_screen.dart';
import 'profile_screen.dart';

class MainNavigation extends StatefulWidget {
  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int _currentIndex = 0;

  final List<Widget> _screens = [
    const HomeScreen(),
    const CatalogScreen(),
    const CartScreen(),
    const ProfileScreen(),
  ];

  Widget _buildActiveIcon(IconData icon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 24, color: const Color(0xFF0D1B4C)),
        const SizedBox(height: 4),
        Container(
          width: 4,
          height: 4,
          decoration: const BoxDecoration(
            color: Color(0xFF0D1B4C),
            shape: BoxShape.circle,
          ),
        ),
      ],
    );
  }

  Widget _buildInactiveIcon(IconData icon) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(icon, size: 24, color: Colors.grey.shade400),
        const SizedBox(height: 8), // 4 height + 4 dot height = 8 to align perfectly
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _screens[_currentIndex],
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          boxShadow: [
            BoxShadow(
              color: Colors.black.withValues(alpha: 0.06),
              blurRadius: 10,
              offset: const Offset(0, -2),
            ),
          ],
        ),
        child: BottomNavigationBar(
          currentIndex: _currentIndex,
          onTap: (index) {
            setState(() {
              _currentIndex = index;
            });
          },
          type: BottomNavigationBarType.fixed,
          backgroundColor: Colors.white,
          showSelectedLabels: false,
          showUnselectedLabels: false,
          elevation: 0,
          items: [
            BottomNavigationBarItem(
              icon: _buildInactiveIcon(Icons.home_outlined),
              activeIcon: _buildActiveIcon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: _buildInactiveIcon(Icons.grid_view_outlined),
              activeIcon: _buildActiveIcon(Icons.grid_view),
              label: 'Catalog',
            ),
            BottomNavigationBarItem(
              icon: _buildInactiveIcon(Icons.shopping_cart_outlined),
              activeIcon: _buildActiveIcon(Icons.shopping_cart),
              label: 'Cart',
            ),
            BottomNavigationBarItem(
              icon: _buildInactiveIcon(Icons.person_outline),
              activeIcon: _buildActiveIcon(Icons.person),
              label: 'Profile',
            ),
          ],
        ),
      ),
    );
  }
}

// Simple Chats placeholder screen
class ChatsScreen extends StatelessWidget {
  const ChatsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Color(0xFF0D1B4C)),
          onPressed: () {},
        ),
        title: const Text(
          'Chats',
          style: TextStyle(
            color: Color(0xFF0D1B4C),
            fontWeight: FontWeight.bold,
            fontSize: 20,
          ),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.search, color: Color(0xFF0D1B4C)),
            onPressed: () {},
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              Icons.chat_bubble_outline,
              size: 80,
              color: Colors.grey.shade300,
            ),
            const SizedBox(height: 16),
            Text(
              'No messages yet',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.grey.shade400,
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Start chatting with sellers\nto find your dream betta!',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 14,
                color: Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
