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
        return HeroDetailMobile(hero: hero);
      }
    });
  }
}

class HeroDetailMobile extends StatelessWidget {
  final Heroes hero;

  HeroDetailMobile({required this.hero});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Image.asset(hero.imageAsset),
            SafeArea(
                child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CircleAvatar(
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      },
                    ),
                  )
                ],
              ),
            ))
          ],
        ),
      ),
    );
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
