import 'package:flutter/material.dart';

class RowsColumnsPage extends StatelessWidget {
  const RowsColumnsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Columns & Rows'),
      ),
      body: Center(
        child: Container(
          color: Colors.red,
          width: 350,
          height: 600,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('Bola 1'),
              const Text('Bola 2'),
              const Text('Bola 3'),
              const Text('Bola 4'),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  SizedBox(
                    height: 120,
                  ),
                  Text('Bola 1'),
                  Text('Bola 2'),
                  Text('Bola 3'),
                  Text('Bola 4'),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
