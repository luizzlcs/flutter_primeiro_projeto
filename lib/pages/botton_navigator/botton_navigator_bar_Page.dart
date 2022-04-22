import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/botton_navigator/forms_p.dart';
import 'package:flutter_primeiro_projeto/pages/botton_navigator/liste_view.dart';
import 'package:flutter_primeiro_projeto/pages/botton_navigator/single_child.dart';

class BottonNavigatorBarPage extends StatefulWidget {
  const BottonNavigatorBarPage({Key? key}) : super(key: key);

  @override
  State<BottonNavigatorBarPage> createState() => _BottonNavigatorBarPageState();
}

class _BottonNavigatorBarPageState extends State<BottonNavigatorBarPage> {
  int indice = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('BottonNavigator Bar'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: indice,
        onTap: (index) {
          setState(
            () {
              indice = index;
            },
          );
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Câmera',
            icon: Icon(Icons.camera),
          ),
          BottomNavigationBarItem(
            label: 'SMS',
            icon: Icon(Icons.sms_rounded),
          ),
          BottomNavigationBarItem(
            label: 'WhastApp',
            icon: Icon(Icons.whatsapp_sharp),
          ),
        ],
      ),
      body: IndexedStack(
        index: indice,
        children: const [ListeView(), SingleChild(), FormsP()],
      ),
    );
  }
}
