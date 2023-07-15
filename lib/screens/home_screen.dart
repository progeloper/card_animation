import 'package:card_animation/data/constants.dart';
import 'package:card_animation/widgets/categories.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  late ScrollController _controller;
  bool isCollapsed = false;
  double topContainer = 0;

  @override
  void initState() {
    super.initState();
    _controller = ScrollController()
      ..addListener(() {
        double value = _controller.offset / 116.2;

        setState(() {
          topContainer = value;
          isCollapsed = _controller.offset > 35;
        });
      });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.sizeOf(context);
    final double categoryExpandedHeight = size.height * 0.27;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: const Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: const [
          Icon(
            Icons.search,
            color: Colors.black,
          ),
        ],
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              AnimatedOpacity(
                duration: const Duration(milliseconds: 400),
                opacity: isCollapsed ? 0 : 1,
                child: AnimatedContainer(
                  duration: const Duration(milliseconds: 400),
                  width: size.width,
                  alignment: Alignment.topCenter,
                  height: isCollapsed ? 0 : categoryExpandedHeight,
                  child: const Categories(),
                ),
              ),
              Expanded(
                child: ListView.builder(
                  controller: _controller,
                  clipBehavior: Clip.none,
                  itemCount: Constants.foods.length,
                  itemBuilder: (context, index) {
                    double scale = 1.0;
                    if (topContainer > 0.5) {
                      scale = index + 0.5 - topContainer;
                      if (scale < 0) {
                        scale = 0;
                      } else if (scale > 1) {
                        scale = 1;
                      }
                    }

                    return Transform(
                      transform: Matrix4.identity()..scale(scale, scale),
                      alignment: Alignment.bottomCenter,
                      child: Align(
                        alignment: Alignment.topCenter,
                        heightFactor: 0.7,
                        child: Constants.foods[index],
                      ),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
