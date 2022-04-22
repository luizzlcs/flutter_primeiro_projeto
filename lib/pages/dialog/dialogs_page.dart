//import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialog/dialog_Custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 45),
                ),
                onPressed: () {
                  showDialog(
                    // Trava a saída do controle.
                    barrierDismissible: false,
                    context: context,
                    builder: (_) {
                      return DialogCustom(_);
                    },
                  );
                },
                child: const Text('Dialog')),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                  minimumSize: const Size(180, 45),
                  onPrimary: Theme.of(context).primaryColorLight,
                  primary: Theme.of(context).primaryColorDark),
              onPressed: () {
                // caixa de diálogo simples tem um título opcional
                // que é exibido acima das opções.
                showDialog(
                    context: context,
                    builder: (context) {
                      return const SimpleDialog(
                        title: Text('Simple Dialog'),
                        contentPadding: EdgeInsets.all(20),
                        children: [
                          Padding(
                            padding: EdgeInsets.all(20),
                            child: Text('TituloX'),
                          )
                        ],
                      );
                    });
              },
              child: const Text('SimpleDialog'),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    barrierDismissible: false,
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: const Text('Alert Dialog'),
                        backgroundColor: Colors.blue[50],
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: const [
                              Padding(
                                padding: EdgeInsets.all(10.0),
                              ),
                              Text('Deseja realmente salvar???')
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Navigator.of(context).pop();
                            },
                            child: const Text('Cancelar'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: const Text('Confirmar'),
                          )
                        ],
                      );
                    },
                  );
                },
                child: const Text('Alert Dialog')),
            ElevatedButton(
                onPressed: () async {
                  final selectedTime = await showTimePicker(
                      context: context, initialTime: (TimeOfDay.now()));
                  print(selectedTime);
                },
                child: const Text('Time Picker')),
            ElevatedButton(
                onPressed: () async {
                  final selectedDate = await showDatePicker(
                      context: context,
                      initialDate: DateTime.now(),
                      firstDate: DateTime(2020),
                      lastDate: DateTime(2025));

                  debugPrint('A data selecionada foi; $selectedDate');
                },
                child: const Text('Date Picker')),
            ElevatedButton(
                onPressed: () {
                  showAboutDialog(
                      context: context,
                      applicationIcon: const Icon(Icons.developer_board_rounded));
                },
                child: const Text('About Dialog'))
          ],
        ),
      ),
    );
  }
}
