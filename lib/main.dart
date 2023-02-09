import 'package:flutter/material.dart';
import 'widgets/page_gridview.dart';
import 'widgets/page_sliver_appbar.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      // home: GridViewPage(), // P45
      home: SliverAppBarPage(), // P63
    );
  }
}
