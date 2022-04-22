import 'package:flutter/material.dart';

class WhatsAppPage extends StatelessWidget {
  const WhatsAppPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.whatsapp_sharp,
          size: 100,
          color: Colors.deepOrange,
        ),
      ),
    );
  }
}
