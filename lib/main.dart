import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      home: GridViewPage(),
    );
  }
}

class GridViewPage extends StatefulWidget {
  const GridViewPage({super.key});

  @override
  State<GridViewPage> createState() => _GridViewPageState();
}

class _GridViewPageState extends State<GridViewPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.grid_on,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.grid_off,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {},
            child: const Icon(
              Icons.arrow_upward,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Colors.black,
            child: Center(
              child: Text(
                index.toString(),
                style: const TextStyle(
                  fontSize: 42,
                  color: Colors.white,
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
