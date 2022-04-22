import 'package:flutter/material.dart';

class SanckbarPage extends StatelessWidget {
  const SanckbarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SnackBars'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                const snackBar = SnackBar(
                  content: Text('Os dados foram salvos com sucesso!'),
                  backgroundColor: Colors.purpleAccent,
                );
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Simple SnacBar'),
            ),
            ElevatedButton(
              onPressed: () {
                final snackBar = SnackBar(
                  content: const Text('Usuário salvo com sucesso!!!'),
                  action: SnackBarAction(
                      label: 'Desfazer',
                      textColor: Colors.white,
                      onPressed: () {
                        debugPrint('clicado');
                      }),
                );

                ScaffoldMessenger.of(context).showSnackBar(snackBar);
                ScaffoldMessenger.of(context).removeCurrentSnackBar();
                ScaffoldMessenger.of(context).showSnackBar(snackBar);
              },
              child: const Text('Action SnacBar'),
            ),
          ],
        ),
      ),
    );
  }
}
