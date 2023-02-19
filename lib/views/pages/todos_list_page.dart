import 'package:flutter/material.dart';

import '../../models/models.dart';
import '../../views/views.dart';

class TodosListPage extends StatefulWidget {
  const TodosListPage({super.key});

  @override
  State<TodosListPage> createState() => _TodosListPageState();
}

class _TodosListPageState extends State<TodosListPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODOアプリ'),
      ),
      body: Container(),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
