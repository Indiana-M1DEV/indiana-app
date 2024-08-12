import 'package:flutter/material.dart';

import 'package:Indiana/app/widgets/searchbar.dart';
import 'package:Indiana/app/themes/fonts.dart' as app_fonts;

class TopNav extends StatelessWidget implements PreferredSizeWidget {
  TopNav({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: SafeArea(
        child: Container(
          padding: EdgeInsets.only(top: 20, bottom: 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Indiana',
                style: app_fonts.AppFonts.h1,
              ),
              IconButton(
                icon: Icon(Icons.menu, color: Colors.black),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
              ),
            ],
          ),
        ),
      ),
      bottom: PreferredSize(
        preferredSize: Size.fromHeight(56.0),
        child: CustomSearchBar(),
      ),
    );
  }

  @override
  Size get preferredSize {
    final double topPadding = 20;
    final double bottomPadding = 20;
    final double extraHeight = 56.0;
    return Size.fromHeight(
        kToolbarHeight + topPadding + bottomPadding + extraHeight);
  }
}
