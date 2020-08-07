import 'package:flutter/material.dart';
import 'package:tiktok/videoplayer.dart';
import 'package:tiktoklikescroller/tiktoklikescroller.dart';

void main() => runApp(Scroller());

class Scroller extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<Color> colors = <Color>[
      Colors.red,
      Colors.blue,
      Colors.yellow,
      Colors.black
    ];

    return MaterialApp(
      home: Scaffold(
        body: TikTokStyleFullPageScroller(
          contentSize: colors.length,
          swipeThreshold: 0.2,
          // ^ the fraction of the screen needed to scroll
          swipeVelocityThreshold: 200,
          // ^ the velocity threshold for smaller scrolls
          animationDuration: const Duration(milliseconds: 300),
          // ^ how long the animation will take
          builder: (BuildContext context, int index) {
            return Container(
              color: colors[index],
              child: Stack(
                children: <Widget>[
                  VideoDemo(),
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}
