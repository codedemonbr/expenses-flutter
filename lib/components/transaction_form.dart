import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final titleController = TextEditingController();
  final valueController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Padding(
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              TextField(
                controller: titleController,
                decoration: InputDecoration(
                  labelText: 'Título',
                ),
              ),
              TextField(
                controller: valueController,
                decoration: InputDecoration(
                  labelText: 'Valor R\$',
                ),
              ),
              TextButton(
                child: Text(
                  'Nova Transacão',
                  style: TextStyle(color: Colors.purple),
                ),
                onPressed: () {
                  print(titleController.text);
                  print(valueController.text);
                },
              ),
            ],
          )),
    );
  }
}