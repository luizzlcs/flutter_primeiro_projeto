import 'package:flutter/material.dart';

class MaterialBannerPage extends StatelessWidget {
  const MaterialBannerPage({Key? key}) : super(key: key);

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
                var materialbanner = MaterialBanner(
                  forceActionsBelow: true,
                  content: Text('Os dados foram salvos com sucesso!'),
                  backgroundColor: Colors.amberAccent,
                  actions: [
                    TextButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context)
                            .hideCurrentMaterialBanner();
                      },
                      child: const Text('Cancelar'),
                    ),
                  ],
                );
                // Fecha após dois segundos, se não passar isto fecha
                // somente quando ciclar em cancelar
                Future.delayed(
                  Duration(seconds: 2),
                  () {
                    ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
                  },
                );
                ScaffoldMessenger.of(context)
                    .showMaterialBanner(materialbanner);
              },
              child: const Text('Material Banner'),
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
