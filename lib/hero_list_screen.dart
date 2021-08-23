import 'package:flutter/material.dart';

class HeroListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext builder, BoxConstraints constraints) {
      if (constraints.maxWidth <= 600) {
        return HeroListView();
      } else if (constraints.maxWidth <= 1200) {
        return HeroGridView(gridCount: 4);
      } else {
        return HeroGridView(gridCount: 6);
      }
    });
  }
}

class HeroListView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class HeroGridView extends StatelessWidget {
  final int gridCount;

  HeroGridView({required this.gridCount});

  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
