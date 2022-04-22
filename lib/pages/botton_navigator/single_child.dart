import 'package:flutter/material.dart';

class SingleChild extends StatelessWidget {
  const SingleChild({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              color: Colors.amberAccent,
              width: MediaQuery.of(context).size.width,
              height: 200,
            ),
            Container(
              color: Colors.blue,
              width: MediaQuery.of(context).size.width,
              height: 200,
            ),
            Container(
              color: Colors.green,
              width: MediaQuery.of(context).size.width,
              height: 200,
            ),
            Container(
              color: Colors.red,
              width: MediaQuery.of(context).size.width,
              height: 200,
            ),
            Container(
              color: Colors.purple,
              width: MediaQuery.of(context).size.width,
              height: 200,
            ),
          ],
        ),
      ),
    );
  }
}
