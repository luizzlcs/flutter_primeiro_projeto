import 'dart:ui';

import 'package:flutter/material.dart';

class GoogleMapPage extends StatelessWidget {
  const GoogleMapPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              //alignment: Alignment.bottomCenter,
              alignment: Alignment.center,
              width: 180,
              height: 180,
              child: Stack(
                children: [
                  Container(
                    width: 155,
                    height: 155,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      gradient: const LinearGradient(
                        colors: <Color>[
                          Color.fromARGB(255, 231, 20, 87), // yellow sun
                          Color.fromARGB(255, 19, 209, 28), // blue sky
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 5,
                      left: 5,
                      right: 0,
                      bottom: 0,
                    ),
                    child: Container(
                      alignment: Alignment.center,
                      width: 145,
                      height: 145,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: Colors.white,
                      ),
                      child: const CircleAvatar(
                        maxRadius: 68,
                        backgroundImage: NetworkImage(
                          'https://media-exp1.licdn.com/dms/image/C4E03AQFwcRKY6bAa5Q/profile-displayphoto-shrink_200_200/0/1633478610358?e=1655337600&v=beta&t=XukxX2WDpDYCguZ7n2V0ndqKscK4WNPugahnYRskNVk',
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 118,
                    bottom: 0,
                    left: 36,
                    right: 37,
                    child: Container(
                      width: 100,
                      height: 40,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    //Para o containe ao vivo
                    top: 120,
                    left: 40,
                    child: Container(
                      decoration: const BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topLeft,
                            end: Alignment(0.5,
                                2.0), // 10% of the width, so there are ten blinds.
                            colors: <Color>[
                              Color.fromARGB(255, 124, 39, 180),
                              Color.fromARGB(255, 241, 76, 153)
                            ],
                          ),
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                            topLeft: Radius.circular(5),
                            topRight: Radius.circular(5),
                          )),
                      child: const Padding(
                        padding: EdgeInsets.only(
                          left: 6,
                          right: 6,
                          top: 8,
                          bottom: 8,
                        ),
                        child: Text(
                          ' AO VIVO ',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
