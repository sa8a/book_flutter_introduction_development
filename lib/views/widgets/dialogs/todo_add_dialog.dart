import 'package:flutter/material.dart';

class TodoAddDialog extends StatelessWidget {
  const TodoAddDialog({
    super.key,
    required this.onAdd,
    required this.textEditingController,
  });

  final ValueChanged<String> onAdd;
  final TextEditingController textEditingController;

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('TODO'),
      content: TextField(
        autofocus: true,
        controller: textEditingController,
        decoration: const InputDecoration(hintText: '入力しましょう。'),
      ),
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

Future<T?> showTodoAddDialog<T>({
  required BuildContext context,
  required ValueChanged<String> onAdd,
}) =>
    showDialog<T>(
      context: context,
      barrierDismissible: false,
      builder: (context) => TodoAddDialog(
        textEditingController: TextEditingController(),
        onAdd: onAdd,
      ),
    );
