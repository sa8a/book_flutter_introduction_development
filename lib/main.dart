import 'package:flutter/material.dart';
import 'dart:math' as math;

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
  int _columnsCount = 2;
  final ScrollController _scrollController = ScrollController();

  @override
  void initState() {
    _scrollController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
            '${_scrollController.hasClients ? _scrollController.position.pixels.toInt().toString() : 0} pixels'),
      ),
      floatingActionButton: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
            onPressed: () {
              if (_columnsCount < 3) {
                setState(() {
                  _columnsCount++;
                });
              }
            },
            child: const Icon(
              Icons.grid_on,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              if (_columnsCount > 2) {
                setState(() {
                  _columnsCount--;
                });
              }
            },
            child: const Icon(
              Icons.grid_off,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 16),
          FloatingActionButton(
            onPressed: () {
              _scrollController.animateTo(
                0,
                duration: Duration(milliseconds: 600),
                curve: Curves.easeInOutQuint,
              );
            },
            child: const Icon(
              Icons.arrow_upward,
              color: Colors.white,
            ),
          ),
        ],
      ),
      body: GridView.builder(
        controller: _scrollController,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: _columnsCount,
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
        ),
        itemCount: 20,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: Color((math.Random(index).nextDouble() * 0x00FFFFFF).toInt())
                .withOpacity(1),
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
