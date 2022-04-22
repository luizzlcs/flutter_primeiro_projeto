import 'package:flutter/material.dart';

class SmsPage extends StatelessWidget {
  const SmsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Icon(
          Icons.sms_outlined,
          size: 100,
          color: Colors.deepOrange,
        ),
      ),
    );
  }
}
