import 'package:flutter/material.dart';

import '../../models/models.dart';
import '../../views/views.dart';

class TodosListPage extends StatefulWidget {
  const TodosListPage({super.key});

  @override
  State<TodosListPage> createState() => _TodosListPageState();
}

class _TodosListPageState extends State<TodosListPage> {
  final List<Todo> _todos = [const Todo(name: 'パンを買う')];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODOアプリ'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          final todo = _todos[index];
          return Card(
            child: ListTile(
              title: Text(todo.name),
              onTap: () {},
              trailing: const Icon(Icons.done, color: Colors.green),
            ),
          );
        },
        itemCount: _todos.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
