import 'package:flutter/material.dart';
import 'widgets/page_gridview.dart';
import 'widgets/page_sliver_appbar.dart';
import 'widgets/page_responsive_design.dart';
import 'widgets/page_animation_hero.dart';
import 'widgets/page_transition.dart';
import 'widgets/page_open_container.dart';
import 'views/pages/pages.dart';

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
      // home: HeroFromPage(), // P110
      // home: TransitionPage(), // P117
      // home: OpenContainerPage(), // P126
      home: TodosListPage(), // P160
    );
  }
}
