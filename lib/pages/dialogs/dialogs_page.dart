import 'package:flutter/material.dart';
import 'package:flutter_primeiro_projeto/pages/dialogs/dialog_Custom.dart';

class DialogsPage extends StatelessWidget {
  const DialogsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dialogs'),
        backgroundColor: Colors.green,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
                onPressed: () {
                  showDialog(
                      context: context,
                      barrierDismissible: false,
                      builder: (_) {
                        return DialogCustom(context);
                      });
                },
                child: Text('Dialog')),
            ElevatedButton(
              onPressed: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return SimpleDialog(
                        title: Text('Simple Dialog'),
                        contentPadding: EdgeInsets.all(10),
                        children: [
                          Padding(
                            padding: const EdgeInsets.all(10.0),
                            child: Text('TituloX'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(),
                            child: Text('Fechar Dialog'),
                          ),
                        ],
                      );
                    });
              },
              child: Text('Simple Dialog'),
            ),
            ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text('Alert Dialog'),
                        content: SingleChildScrollView(
                          child: ListBody(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(10.0),
                                child: Text('Titulo X'),
                              ),
                            ],
                          ),
                        ),
                        actions: [
                          TextButton(
                            onPressed: () {},
                            child: Text('Cancelar'),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('Confirmar'),
                          ),
                        ],
                      );
                    },
                  );
                },
                child: Text('Alert Dialog')),
            ElevatedButton(
                onPressed: () async {
                  final selectedTime = await showTimePicker(
                    context: context,
                    initialTime: TimeOfDay.now(),
                  );
                  print('O horario selecionado foi : $selectedTime');
                },
                child: Text('Timer Dialog')),
            ElevatedButton(
                onPressed: () async {
                  await showDatePicker(
                    context: context,
                    initialDate: DateTime.now(),
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2025),
                  );
                },
                child: Text('Date Dialog')),
          ],
        ),
      ),
    );
  }
}
