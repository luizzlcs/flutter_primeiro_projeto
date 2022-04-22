import 'package:flutter/material.dart';

class SingleChildscrollviewPage extends StatelessWidget {
  const SingleChildscrollviewPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('ScrollView SingleChild'),
      ),
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
