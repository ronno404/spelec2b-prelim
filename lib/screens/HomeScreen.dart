import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:prelim/constants.dart';
import 'package:prelim/data.dart';
import 'package:prelim/widgets/home/BottomNavBar.dart';
import 'package:prelim/widgets/home/Item.dart';

import '../widgets/home/SearchBar.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController textController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: bgColor,
      body: SizedBox(
          height: screenHeight,
          width: screenWidth,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Positioned(
                left: -111,
                top: -83,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: neonGreen.withOpacity(0.5),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 100,
                      sigmaY: 100,
                    ),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Positioned(
                right: -75,
                top: 285,
                child: Container(
                  height: 166.0,
                  width: 166.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: neonPink.withOpacity(0.5),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 160,
                      sigmaY: 160,
                    ),
                    child: Container(
                      height: 166,
                      width: 166,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Positioned(
                left: -63,
                bottom: -113,
                child: Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: neonGreen.withOpacity(0.5),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 100,
                      sigmaY: 100,
                    ),
                    child: Container(
                      height: 200,
                      width: 200,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              Positioned(
                bottom: 40,
                child: Container(
                  height: 60.0,
                  width: 60.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: neonGreen.withOpacity(0.5),
                  ),
                  child: BackdropFilter(
                    filter: ImageFilter.blur(
                      sigmaX: 40.0,
                      sigmaY: 40.0,
                    ),
                    child: Container(
                      height: 60.0,
                      width: 60.0,
                      color: Colors.transparent,
                    ),
                  ),
                ),
              ),
              CustomScrollView(
                slivers: [
                  SliverList(
                    delegate: SliverChildListDelegate([
                      const Padding(
                        padding: EdgeInsets.only(top: 80),
                        child: Text(
                          "What would you\nlike to watch?",
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 28,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 28),
                        child: SearchBar(controller: textController),
                      ),
                      const SizedBox(height: 30),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "New movies",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(height: 37),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            newItems.length,
                            (index) => Padding(
                              padding:
                                  EdgeInsets.only(left: index == 0 ? 20 : 0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/details');
                                },
                                child: SizedBox(
                                    height: 160,
                                    width: 142,
                                    child: Item(
                                      asset: newItems[index],
                                      mask: index == 0
                                          ? 'assets/masks/mask_first.png'
                                          : index == 2
                                              ? 'assets/masks/mask_last.png'
                                              : 'assets/masks/mask_mid.png',
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 37),
                      const Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        child: Text(
                          "Upcoming movies",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w400,
                            fontSize: 17,
                          ),
                        ),
                      ),
                      const SizedBox(height: 37),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: List.generate(
                            upcomingItems.length,
                            (index) => Padding(
                              padding:
                                  EdgeInsets.only(left: index == 0 ? 20 : 0),
                              child: GestureDetector(
                                onTap: () {
                                  Navigator.pushNamed(context, '/details');
                                },
                                child: SizedBox(
                                    height: 160,
                                    width: 142,
                                    child: Item(
                                      asset: upcomingItems[index],
                                      mask: index == 0
                                          ? 'assets/masks/mask_first.png'
                                          : index == 2
                                              ? 'assets/masks/mask_last.png'
                                              : 'assets/masks/mask_mid.png',
                                    )),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ]),
                  ),
                ],
              ),
              const Positioned(
                bottom: 0,
                child: BottomNavBar(),
              )
            ],
          )),
    );
  }
}
