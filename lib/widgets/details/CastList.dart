import 'package:flutter/material.dart';
import 'package:prelim/widgets/home/Item.dart';

class CastList extends StatelessWidget {
  const CastList({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: const [
            Text(
              'Casts',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w700,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.orange,
              minRadius: 16,
              maxRadius: 30,
              backgroundImage: AssetImage(
                'assets/images/cast_angelinajolie.png',
              ),
            ),
            Expanded(
              child: Container(
                constraints: const BoxConstraints(
                  maxHeight: 50,
                  maxWidth: 112,
                ),
                transform: Matrix4.translationValues(-6, 0, 0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: const [
                    Item(
                      asset: 'assets/masks/mask_cast.png',
                      mask: 'assets/masks/mask_cast.png',
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.0,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Angelina\nJolie',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                          maxLines: 2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const CircleAvatar(
              backgroundColor: Colors.orange,
              minRadius: 16,
              maxRadius: 30,
              backgroundImage: AssetImage(
                'assets/images/cast_salmahayek.png',
              ),
            ),
            Expanded(
              child: Container(
                constraints: const BoxConstraints(
                  maxHeight: 50,
                  maxWidth: 112,
                ),
                transform: Matrix4.translationValues(-6, 0, 0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: const [
                    Item(
                      asset: 'assets/masks/mask_cast.png',
                      mask: 'assets/masks/mask_cast.png',
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.0,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Salma\nHayek',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                          maxLines: 2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 10,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CircleAvatar(
              backgroundColor: Colors.orange,
              minRadius: 16,
              maxRadius: 30,
              backgroundImage: AssetImage(
                'assets/images/cast_richardmadden.png',
              ),
            ),
            Expanded(
              child: Container(
                constraints: const BoxConstraints(
                  maxHeight: 50,
                  maxWidth: 112,
                ),
                transform: Matrix4.translationValues(-6, 0, 0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: const [
                    Item(
                      asset: 'assets/masks/mask_cast.png',
                      mask: 'assets/masks/mask_cast.png',
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.0,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Richard\nMadden',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                          maxLines: 2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            const CircleAvatar(
                backgroundColor: Colors.orange,
                minRadius: 16,
                maxRadius: 30,
                backgroundImage: AssetImage(
                  'assets/images/cast_gemmachan.png',
                )),
            Expanded(
              child: Container(
                constraints: const BoxConstraints(
                  maxHeight: 50,
                  maxWidth: 112,
                ),
                transform: Matrix4.translationValues(-6, 0, 0),
                child: Stack(
                  clipBehavior: Clip.none,
                  children: const [
                    Item(
                      asset: 'assets/masks/mask_cast.png',
                      mask: 'assets/masks/mask_cast.png',
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.0,
                      ),
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Text(
                          'Gemma\nChan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 13,
                          ),
                          maxLines: 2,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
