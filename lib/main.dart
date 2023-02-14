import 'package:flutter/material.dart';
import 'widgets/page_gridview.dart';
import 'widgets/page_sliver_appbar.dart';
import 'widgets/page_responsive_design.dart';
import 'widgets/page_animation_hero.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Material App',
      // home: GridViewPage(), // P45
      // home: SliverAppBarPage(), // P63
      // home: ResponsiveDesignPage(), // P63
      home: HeroFromPage(), // P110
    );
  }
}
