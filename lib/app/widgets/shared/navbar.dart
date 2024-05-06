import 'package:flutter/material.dart';

class BottomNavBar extends StatefulWidget {
  final Function(int) onItemTapped;

  BottomNavBar({required this.onItemTapped});

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
    widget.onItemTapped(index); // Call the callback method
  }

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      elevation: 0,
      selectedItemColor: const Color.fromRGBO(23, 23, 25, 1),
      unselectedItemColor: const Color.fromRGBO(43, 44, 43, 1),
      currentIndex: _selectedIndex,
      showSelectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Icon(Icons.location_on),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Icon(Icons.visibility),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Icon(Icons.download),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Icon(Icons.notifications),
          ),
          label: '',
        ),
      ],
    );
  }
}
