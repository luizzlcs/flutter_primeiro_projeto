import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/bottombar2/contato_page.dart';
import 'package:flutter_primeiro_projeto/pages/bottombar2/email_page%20copy%202.dart';
import 'package:flutter_primeiro_projeto/pages/bottombar2/google_map_page.dart';
import 'package:flutter_primeiro_projeto/pages/bottombar2/sms_page.dart';
import 'package:flutter_primeiro_projeto/pages/bottombar2/telegram_page%20copy.dart';
import 'package:flutter_primeiro_projeto/pages/bottombar2/whast_app_page.dart';

class BottomBarnavigator2 extends StatefulWidget {
  const BottomBarnavigator2({Key? key}) : super(key: key);

  @override
  State<BottomBarnavigator2> createState() => _BottomBarnavigator2State();
}

class _BottomBarnavigator2State extends State<BottomBarnavigator2> {
  int indice = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('🖱️ Bottom Bar 2'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Colors.blue,
        backgroundColor: Colors.pink[100],
        unselectedItemColor: Colors.black87,
        showSelectedLabels: true,
        type: BottomNavigationBarType.shifting,
        currentIndex: indice,
        onTap: (index) {
          setState(
            () {
              indice = index;
            },
          );
          print(index);
        },
        items: const [
          BottomNavigationBarItem(
            label: 'Contato',
            icon: Icon(Icons.contact_phone),
          ),
          BottomNavigationBarItem(
            label: 'GoogleMap',
            icon: Icon(Icons.fmd_good_outlined),
          ),
          BottomNavigationBarItem(
            label: 'WhastsApp',
            icon: Icon(Icons.whatsapp),
          ),
          BottomNavigationBarItem(
            label: 'SMS',
            icon: Icon(Icons.sms),
          ),
          BottomNavigationBarItem(
            label: 'Telegram',
            icon: Icon(Icons.telegram),
          ),
          BottomNavigationBarItem(
            label: 'E-mail',
            icon: Icon(
              Icons.email_outlined,
            ),
          ),
        ],
      ),
      body: IndexedStack(
        index: indice,
        children: const [
          ContatoPage(),
          GoogleMapPage(),
          WhatsAppPage(),
          SmsPage(),
          TelegramAppPage(),
          EmailPage(),
        ],
      ),
    );
  }
}
