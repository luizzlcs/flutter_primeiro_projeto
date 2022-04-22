//import 'dart:ui';

import 'package:flutter/material.dart';

class BotoesRotacaoTextoPage extends StatelessWidget {
  const BotoesRotacaoTextoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Botoes e Rotação de Texto'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RotatedBox(
              quarterTurns: -1,
              child: Center(
                child: Container(
                  color: Colors.brown,
                  padding: const EdgeInsets.all(10),
                  child: const Text(
                    'Luiz Carlos',
                    style: TextStyle(
                      fontSize: 32,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            ),
            const Icon(
              Icons.person,
              size: 42,
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Salvar'),
              style: TextButton.styleFrom(
                primary: Colors.blueGrey,
                padding: const EdgeInsets.all(10),
                minimumSize: const Size(200, 50),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.access_alarm),
              iconSize: 40,
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text('Salvar Tudo'),
              style: ElevatedButton.styleFrom(
                primary: Colors.blueGrey,
                shadowColor: Colors.deepOrange,
                minimumSize: const Size(180, 40),
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(50),
                  ),
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              child: const Text(
                'Aplicando condição ao botão',
                style: TextStyle(fontSize: 16),
              ),
              style: ButtonStyle(
                shadowColor: MaterialStateProperty.all(Colors.blue),
                minimumSize: MaterialStateProperty.resolveWith(
                  (states) {
                    if (states.contains(MaterialState.pressed)) {
                      return const Size(150, 80);
                    } else if (states.contains(MaterialState.hovered)) {
                      return const Size(300, 300);
                    }
                    return const Size(120, 50);
                  },
                ),
              ),
            ),
            ElevatedButton.icon(
              onPressed: () {},
              icon: const Icon(Icons.airplane_ticket),
              label: const Text(
                'Salvando tudo novamente',
                style: TextStyle(color: Colors.yellow),
              ),
            ),
            InkWell(
              onLongPress: () {},
              child: const Text(
                'InkWell',
                style: TextStyle(fontSize: 22),
              ),
            ),
            GestureDetector(
              child: const Text('Gesture Dectector'),
              onTap: () => debugPrint('Gesture Clicado'),
              onVerticalDragStart: (_) => debugPrint('Start $_'),
            ),
            const SizedBox(
              height: 20,
            ),
            Container(
              width: 300,
              height: 100,
              decoration: BoxDecoration(
                gradient: const LinearGradient(
                  colors: [Colors.greenAccent, Colors.green],
                ),
                borderRadius: BorderRadius.circular(50),
                boxShadow: const [BoxShadow(blurRadius: 10, offset: Offset(5, 2))],
              ),
              child: InkWell(
                borderRadius: BorderRadius.circular(50),
                onTap: () {},
                child: const Center(
                  child: Text(
                    'Botão Salvar',
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
