import 'package:flutter/material.dart';

class DialogCustom extends Dialog {
  DialogCustom(BuildContext context, {Key? key})
      : super(key: key, 
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: SizedBox(
            width: 300,
            height: 300,
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.all(10),
                  child: Text('TituloX'),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                  child: Column(
                    children: const [
                      Text('Fechar Dialog'),
                      Padding(
                        padding: EdgeInsets.all(30),
                      ),
                      Text(
                        '👩‍💻',
                        style: TextStyle(fontSize: 90),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
}
