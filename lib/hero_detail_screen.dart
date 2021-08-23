import 'package:flutter/material.dart';

import 'model/heroes.dart';

class HeroDetailScreen extends StatelessWidget {
  final Heroes hero;

  HeroDetailScreen({required this.hero});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
      if (constraints.maxWidth > 600) {
        return HeroDetailWeb();
      } else {
        return HeroDetailMobile();
      }
    });
  }
}

class HeroDetailMobile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class HeroDetailWeb extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}

class BookmarkButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BookmarkButtonState();
  }
}

class _BookmarkButtonState extends State<BookmarkButton> {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
