import 'package:flutter/material.dart';

class MediaQuery2 extends StatelessWidget {
  const MediaQuery2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final tamanhoMediaQuery = MediaQuery.of(context);
    final statusBar = tamanhoMediaQuery.padding.top;
    const nossaAppBar = kToolbarHeight;
    final tamanhoDaTela =
        tamanhoMediaQuery.size.height - statusBar - nossaAppBar;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fazendo sem olhar'),
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            color: Colors.lightBlueAccent,
            width: tamanhoMediaQuery.size.width,
            height: tamanhoDaTela * .5,
          ),
        ],
      )),
    );
  }
}
