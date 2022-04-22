import 'package:flutter/material.dart';

class ListeView extends StatelessWidget {
  const ListeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.separated(
        itemCount: 100000,
        separatorBuilder: (context, index) {
          return Divider(
            thickness: 2,
            color: Colors.red[200],
          );
        },
        itemBuilder: (context, index) {
          debugPrint('Carregando o $index');
          return ListTile(
            title: Text('Indice $index'),
            subtitle: const Text('Flutter é TOP'),
            leading: const CircleAvatar(
              backgroundImage: NetworkImage(
                  'https://miro.medium.com/max/1400/0*vowtRZE_wvyVA7CB'),
            ),
            trailing: CircleAvatar(
              backgroundColor: Colors.amber[700],
            ),
          );
        },
      ),
    );
  }
}
