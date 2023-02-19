import 'package:flutter/material.dart';

import '../../models/models.dart';
import '../../views/views.dart';

class TodosListPage extends StatefulWidget {
  const TodosListPage({super.key});

  @override
  State<TodosListPage> createState() => _TodosListPageState();
}

class _TodosListPageState extends State<TodosListPage> {
  final List<Todo> _todos = [
    Todo(name: 'パンを買う', isCompleted: false),
    Todo(name: '牛乳を買う', isCompleted: true),
    Todo(name: 'お菓子を買う', isCompleted: false),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('TODOアプリ'),
      ),
      body: ListView.builder(
        itemBuilder: (BuildContext context, int index) {
          final todo = _todos[index];
          return Dismissible(
            key: ObjectKey(todo),
            onDismissed: (direction) {
              setState(() {
                _todos.removeAt(index);
              });
            },
            child: Card(
              color: todo.isCompleted ? Colors.greenAccent : null,
              child: ListTile(
                title: Text(todo.name),
                onTap: () {
                  setState(() {
                    _todos[index] =
                        Todo(isCompleted: !todo.isCompleted, name: todo.name);
                  });
                },
                trailing: todo.isCompleted
                    ? const Icon(
                        Icons.done,
                        color: Colors.green,
                      )
                    : null,
              ),
            ),
          );
        },
        itemCount: _todos.length,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showTodoAddDialog(
              context: context,
              onAdd: (name) {
                setState(() {
                  _todos.insert(0, Todo(name: name));
                });
              });
        },
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ),
    );
  }
}
