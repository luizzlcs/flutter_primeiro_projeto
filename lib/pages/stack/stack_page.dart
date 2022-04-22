import 'dart:ui';

import 'package:flutter/material.dart';

class StackPage extends StatelessWidget {
  const StackPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stack'),
      ),
      body: Stack(
        children: [
          Positioned(
            left: 50,
            right: 150,
            bottom: 190,
            top: 100,
            child: Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                    0.0,
                    0.1,
                    0.6,
                    0.9,
                  ],
                  colors: [
                    Colors.yellow,
                    Colors.red,
                    Colors.indigo,
                    Colors.teal,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(150),
                  bottomRight: Radius.circular(0),
                  bottomLeft: Radius.circular(150),
                ),
                color: Colors.blue,
              ),
            ),
          ),
          Positioned(
            left: 150,
            right: 50,
            bottom: 190,
            top: 100,
            child: Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                    0.0,
                    0.1,
                    0.6,
                    0.9,
                  ],
                  colors: [
                    Colors.yellow,
                    Colors.red,
                    Colors.indigo,
                    Colors.teal,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(150),
                  topRight: Radius.circular(0),
                  bottomRight: Radius.circular(150),
                  bottomLeft: Radius.circular(0),
                ),
                color: Colors.pink,
              ),
            ),
          ),
          Positioned(
            left: 140,
            right: 70,
            bottom: 80,
            top: 220,
            child: Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                    0.0,
                    0.1,
                    0.6,
                    0.9,
                  ],
                  colors: [
                    Colors.yellow,
                    Colors.red,
                    Colors.indigo,
                    Colors.teal,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(0),
                  topRight: Radius.circular(100),
                  bottomRight: Radius.circular(0),
                  bottomLeft: Radius.circular(100),
                ),
                color: Colors.pink,
              ),
            ),
          ),
          Positioned(
            left: 15,
            right: 160,
            bottom: 115,
            top: 220,
            child: Container(
              width: 150,
              height: 150,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                    0.0,
                    0.1,
                    0.6,
                    0.9,
                  ],
                  colors: [
                    Colors.yellow,
                    Colors.red,
                    Colors.indigo,
                    Colors.teal,
                  ],
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(100),
                  topRight: Radius.circular(0),
                  bottomRight: Radius.circular(100),
                  bottomLeft: Radius.circular(0),
                ),
                color: Colors.pink,
              ),
            ),
          ),
          Center(
            child: Transform.rotate(
              angle: 180,
              child: Container(
                width: 80,
                height: 80,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topRight,
                    end: Alignment.bottomLeft,
                    stops: [
                      0.0,
                      0.3,
                      0.9,
                      0.5,
                    ],
                    colors: [
                      Colors.teal,
                      Colors.indigo,
                      Colors.indigo,
                      Colors.teal,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(50),
                  color: Colors.deepOrange,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
