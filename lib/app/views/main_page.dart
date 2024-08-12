import 'package:Indiana/app/views/home_page.dart';
import 'package:Indiana/app/views/map_page.dart';
import 'package:flutter/material.dart';
import 'package:Indiana/app/widgets/category_slider.dart';
import 'package:Indiana/app/themes/fonts.dart' as app_fonts;
import '../widgets/topnav.dart';
import '../widgets/shared/navbar.dart';
import '../widgets/cache_card.dart';

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _selectedIndex = 0; // Track the currently selected index

  // Method to handle index change
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget _getBodyWidget() {
      switch (_selectedIndex) {
        case 0:
          return HomePage(); // Replace HomeWidget with your home widget
        case 1:
          return MapPage(); // Replace MapWidget with your map widget
        case 2:
          return HomePage(); // Replace ShopWidget with your shop widget
        case 3:
          return HomePage(); // Replace NotificationsWidget with your notifications widget
        default:
          return HomePage();
      }
    }

    return Scaffold(
      appBar: TopNav(),
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: _getBodyWidget(), // Display the widget based on selected index
      ),
      bottomNavigationBar: BottomNavBar(
        onItemTapped: _onItemTapped, // Pass the callback to BottomNavBar
      ),
    );
  }

  Future<void> _refreshData() async {
    // Implement your refresh logic here
  }
}
