import 'package:auto_scroll/auto_scroll.dart';
import 'package:earn_from_ads/ads_widget.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});

  final controller = ScrollController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      body:
          // AutoScroller(
          //   lengthIdentifier: 100000000,
          //   anchorThreshold: 24,
          //   startAnchored: false,
          //   scrollAxis: Axis.vertical,
          //   builder: (context, controller) {
          //     return
          ListView.separated(
        scrollDirection: Axis.vertical,
        itemCount: 1000000000,
        separatorBuilder: (context, index) {
          return MyBannerAdWidget();
        },
        itemBuilder: (context, index) {
          return MyBannerAdWidget();
        },
        //   );
        // },
      ),
    ));
  }
}
