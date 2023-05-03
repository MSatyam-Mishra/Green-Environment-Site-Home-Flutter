import 'dart:math';

import 'package:flutter/material.dart';
import 'package:green_shop_website_ui/widgets/body_widget_2.dart';
import 'package:green_shop_website_ui/widgets/body_widget_3.dart';
import 'dart:ui' as ui;

import '../design_elements.dart';
import '../widgets/body_widget.dart';
import '../widgets/top_nav_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );
    _animation = Tween<double>(begin: 0, end: 1).animate(_controller);
  }

  @override
  void dispose() {
    // TODO: implement dispose

    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(
                    "assets/images/bg.jpg",
                  ),
                  fit: BoxFit.cover),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              padding: EdgeInsets.all(50),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: BackdropFilter(
                  filter: ui.ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                  child: Center(
                    child: Container(
                      //margin: EdgeInsets.all(50),
                      width: screenWidth,
                      // height: screenHeight,
                      padding:
                          EdgeInsets.symmetric(vertical: 25, horizontal: 75),
                      decoration: BoxDecoration(
                          color: ui.Color(0xFFc1ccbd).withOpacity(0.75),
                          borderRadius: BorderRadius.circular(30)),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            TopNavigationBar(),
                            Stack(
                              children: [
                                Container(
                                  width: screenWidth,
                                  height: screenHeight,
                                  child: PageView(
                                    scrollDirection: Axis.vertical,
                                    children: [
                                      BodyWidget(),
                                      BodyWidget2(),
                                      BodyWidget3()
                                    ],
                                    onPageChanged: (index) {
                                      if (index == 1) {
                                        _controller.forward();
                                      } else {
                                        _controller.reverse();
                                      }
                                    },
                                  ),
                                ),
                                AnimatedBuilder(
                                  animation: _animation,
                                  builder: (BuildContext context, child) {
                                    final transform = Matrix4.identity()
                                      ..setEntry(3, 2, 0.001)
                                      ..rotateY(_animation.value * pi);
                                    return Transform(
                                      transform: transform,
                                      alignment: Alignment.center,
                                      child: child,
                                    );
                                  },
                                  child: IgnorePointer(
                                    child: Container(),
                                  ),
                                ),
                              ],
                            )
                          ]),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
