import 'package:flutter/material.dart';

import 'package:Indiana/app/themes/fonts.dart' as app_fonts;

class CategorySlider extends StatefulWidget {
  @override
  _CategorySliderState createState() => _CategorySliderState();
}

class _CategorySliderState extends State<CategorySlider> {
  int selectedIndex = 0; // Track the selected category index

  final List<String> categories = [
    'Adventure',
    'Thriller',
    'Mystery',
    'Challenge'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: MediaQuery.of(context).size.width,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            onTap: () {
              setState(() {
                selectedIndex = index; // Update the selected index
              });
            },
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 2),
              decoration: BoxDecoration(
                color: selectedIndex == index
                    ? const Color.fromRGBO(23, 23, 25, 1)
                    : Colors.transparent,
                borderRadius: BorderRadius.circular(15),
              ),
              padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Center(
                child: Text(
                  categories[index],
                  style: app_fonts.AppFonts.p.copyWith(
                    color: selectedIndex == index ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
