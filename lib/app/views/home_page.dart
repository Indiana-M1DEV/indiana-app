import 'package:flutter/material.dart';
import 'package:Indiana/app/widgets/category_slider.dart';
import 'package:Indiana/app/themes/fonts.dart' as app_fonts;
import '../widgets/topnav.dart';
import '../widgets/shared/navbar.dart';
import '../widgets/cache_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: RefreshIndicator(
        onRefresh: _refreshData,
        child: Container(
          decoration: BoxDecoration(
            color: Color.fromRGBO(240, 240, 240, 1),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.0),
              topRight: Radius.circular(20.0),
            ),
          ),
          child: ListView(
            padding: EdgeInsets.only(left: 16.0),
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(
                    left: 8.0, top: 30.0, right: 20.0, bottom: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('New caches nearby', style: app_fonts.AppFonts.h3),
                    GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.chevron_right, size: 24),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [CacheCard(), CacheCard(), CacheCard()],
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 20.0),
                child: CategorySlider(),
              ),
              SizedBox(
                height: 250,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [CacheCard(), CacheCard(), CacheCard()],
                ),
              ),
              SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> _refreshData() async {
    // Implement your refresh logic here
    await Future.delayed(Duration(seconds: 1)); // Mock delay
  }
}
