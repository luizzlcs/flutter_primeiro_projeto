import 'package:flutter/material.dart';

class ContainerPage extends StatelessWidget {
  const ContainerPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo de container'),
      ),
      body: Center(
        child: Container(
          width: 200,
          height: 200,
          margin: const EdgeInsets.all(10),
          padding: const EdgeInsets.all(10),
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(99),
                bottomRight: Radius.circular(0),
                topLeft: Radius.circular(0),
                topRight: Radius.circular(99),
              ),
              color: Colors.red,
              boxShadow: [
                BoxShadow(
                  color: Colors.black,
                  blurRadius: 50,
                  offset: Offset(5, 5),
                ),
                BoxShadow(
                  color: Color.fromARGB(255, 248, 246, 246),
                  blurRadius: 5,
                  offset: Offset(-0, -1),
                )
              ]),
        ),
      ),
    );
  }
}
