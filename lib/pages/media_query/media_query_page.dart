import 'package:flutter/material.dart';

class MediaQueryPage extends StatelessWidget {
  const MediaQueryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final statusBar = mediaQuery.padding.top;
    const minhaAppBar = kToolbarHeight;

    final tamanhoHeigthBody = mediaQuery.size.height - statusBar - minhaAppBar;
    // Imprimindo propriedades do MediaQuery
    debugPrint('Largura: ${mediaQuery.size.width}');
    debugPrint('Altura: ${mediaQuery.size.height}');
    debugPrint('Padding TOP ${mediaQuery.padding.top}');
    debugPrint('Orientação ${mediaQuery.orientation}');
    debugPrint('Tamnho AppBar padrão: $kToolbarHeight');

    return Scaffold(
      appBar: AppBar(
        title: const Text('MidiaQuery'),
      ),
      body: Center(
        child: Column(
          children: [
            Container(
              color: Colors.red,
              width: mediaQuery.size.width,
              height: tamanhoHeigthBody * .5,
            ),
          ],
        ),
      ),
    );
  }
}
