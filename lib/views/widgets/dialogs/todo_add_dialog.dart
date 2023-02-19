import 'package:flutter/material.dart';

class TodoAddDialog extends StatelessWidget {
  const TodoAddDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('TODO'),
      actions: <Widget>[
        TextButton(
          child: const Text('キャンセル'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        ElevatedButton(
          child: const Text('追加する'),
          onPressed: () {
            Navigator.of(context).pop();
          },
        )
      ],
    );
  }
}
