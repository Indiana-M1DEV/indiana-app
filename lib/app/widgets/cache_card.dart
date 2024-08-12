import 'package:flutter/material.dart';

import 'package:Indiana/app/themes/fonts.dart' as app_fonts;

class CacheCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 150,
      margin: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image(
              image: AssetImage('assets/images/Card-back.png'),
              width: double.infinity + 100,
              height: 150,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 5),
            child: Align(
              alignment: Alignment.centerLeft,
              child: Text('Unlock hidden treasure',
                  style: app_fonts.AppFonts.h4, maxLines: 2),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Text('20 km • 4 Juin',
                style: app_fonts.AppFonts.p, maxLines: 1),
          ),
        ],
      ),
    );
  }
}
