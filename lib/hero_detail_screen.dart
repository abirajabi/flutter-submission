import 'package:flutter/cupertino.dart';
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
        return HeroDetailWeb(hero: hero);
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
          children: [
            Stack(
              fit: StackFit.passthrough,
              children: [
                Hero(
                  tag: 'hero_cover',
                  child: Image.asset(
                    hero.imageAsset,
                    fit: BoxFit.cover,
                  ),
                ),
                SafeArea(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back,
                          color: Colors.white,
                        ),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                      BookmarkButton(),
                    ],
                  ),
                ),
              ],
            ),
            Container(
                margin: EdgeInsets.only(top: 16.0),
                child: Text(
                  hero.name,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
                )),
            Container(
                margin: EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Column(
                      children: [
                        Image.asset('images/attributes/hero_strength.png'),
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(hero.strBase.toString() +
                                ' (+' +
                                hero.strGain.toString() +
                                ')'))
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('images/attributes/hero_agility.png'),
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(hero.agiBase.toString() +
                                ' (+' +
                                hero.agiGain.toString() +
                                ')'))
                      ],
                    ),
                    Column(
                      children: [
                        Image.asset('images/attributes/hero_intelligence.png'),
                        Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(hero.intBase.toString() +
                                ' (+' +
                                hero.intGain.toString() +
                                ')'))
                      ],
                    ),
                  ],
                )),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              child: Text(hero.description),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 24.0, horizontal: 8.0),
              height: 100,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: hero.imageUrls.map((url) {
                  return Padding(
                    padding: const EdgeInsets.all(4.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.network(url),
                    ),
                  );
                }).toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class HeroDetailWeb extends StatelessWidget {
  final Heroes hero;

  HeroDetailWeb({required this.hero});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final _scrollController = ScrollController();

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 64),
          child: Center(
            child: Container(
              width: screenWidth <= 1200 ? 800 : 1200,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Dota 2 Heroes',
                      style: TextStyle(
                        fontSize: 32,
                      )),
                  SizedBox(height: 32.0),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          children: [
                            ClipRRect(
                              child: Image.asset(hero.imageAsset),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Scrollbar(
                                isAlwaysShown: true,
                                controller: _scrollController,
                                child: Container(
                                    height: 100,
                                    padding: const EdgeInsets.only(bottom: 16),
                                    child: ListView(
                                      scrollDirection: Axis.horizontal,
                                      children: hero.imageUrls.map((url) {
                                        return Padding(
                                            padding: EdgeInsets.all(4.0),
                                            child: ClipRRect(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              child: Image.network(url),
                                            ));
                                      }).toList(),
                                    )))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 32,
                      ),
                      Expanded(
                        child: Card(
                          child: Container(
                            padding: const EdgeInsets.all(16.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                    margin: EdgeInsets.only(bottom: 20),
                                    child: Text(hero.name,
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          fontSize: 30.0,
                                        ))),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                            'images/attributes/hero_strength.png'),
                                        Text(hero.strBase.toString() +
                                            ' (+' +
                                            hero.strGain.toString() +
                                            ')')
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                            'images/attributes/hero_agility.png'),
                                        Text(hero.agiBase.toString() +
                                            ' (+' +
                                            hero.agiGain.toString() +
                                            ')')
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                            'images/attributes/hero_intelligence.png'),
                                        Text(hero.intBase.toString() +
                                            ' (+' +
                                            hero.intGain.toString() +
                                            ')')
                                      ],
                                    )
                                  ],
                                ),
                                Container(
                                  margin: EdgeInsets.all(16.0),
                                  child: Text(hero.description),
                                )
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class BookmarkButton extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _BookmarkButtonState();
  }
}

class _BookmarkButtonState extends State<BookmarkButton> {
  bool isBookmark = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(isBookmark ? Icons.bookmark : Icons.bookmark_border_outlined),
      color: Colors.white,
      onPressed: () {
        setState(() {
          isBookmark = !isBookmark;
        });
      },
    );
  }
}
