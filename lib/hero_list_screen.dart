import 'package:flutter/material.dart';
import 'package:submission_dicoding/hero_detail_screen.dart';
import 'package:submission_dicoding/model/const.dart';
import 'package:submission_dicoding/model/heroes.dart';

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
  getMainHeroAttr(mainAttr) {
    switch (mainAttr) {
      case 'Strength':
        {
          return 'images/attributes/hero_strength.png';
        }
      case 'Agility':
        {
          return 'images/attributes/hero_agility.png';
        }
      case 'Intelligence':
        {
          return 'images/attributes/hero_intelligence.png';
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Dota 2 Heroes'),
          leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            color: Colors.white,
            onPressed: () {
              Navigator.pop(context);
            },
          )),
      body: ListView.builder(
          itemCount: allHeroesList.length,
          itemBuilder: (context, index) {
            final Heroes hero = allHeroesList[index];
            return Material(
              child: InkWell(
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return HeroDetailScreen(hero: hero);
                  }));
                },
                child: Card(
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Expanded(
                        flex: 1,
                        child: Padding(
                          padding: EdgeInsets.all(4.0),
                          child: Image.asset(
                            hero.imageAsset,
                            fit: BoxFit.fill,
                          ),
                        ),
                      ),
                      Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  hero.name,
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                Row(
                                  children: [
                                    Image.asset(
                                      getMainHeroAttr(hero.mainAttr),
                                      width: 15,
                                      height: 15,
                                    ),
                                    Padding(
                                        padding: EdgeInsets.only(left: 8.0)),
                                    Text(hero.mainAttr),
                                  ],
                                ),
                                SizedBox(
                                  height: 8.0,
                                ),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    Column(
                                      children: [
                                        Image.asset(
                                          'images/attributes/hero_strength.png',
                                          width: 20,
                                          height: 20,
                                        ),
                                        Text(hero.strBase.toString() +
                                            ' (+' +
                                            hero.strGain.toString() +
                                            ')')
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          'images/attributes/hero_agility.png',
                                          width: 20,
                                          height: 20,
                                        ),
                                        SizedBox(height: 4.0),
                                        Text(hero.agiBase.toString() +
                                            ' (+' +
                                            hero.agiGain.toString() +
                                            ')')
                                      ],
                                    ),
                                    Column(
                                      children: [
                                        Image.asset(
                                          'images/attributes/hero_intelligence.png',
                                          width: 20,
                                          height: 20,
                                        ),
                                        Text(hero.intBase.toString() +
                                            ' (+' +
                                            hero.intGain.toString() +
                                            ')')
                                      ],
                                    ),
                                  ],
                                )
                              ],
                            ),
                          ))
                    ],
                  ),
                ),
              ),
            );
          }),
    );
  }
}

class HeroGridView extends StatelessWidget {
  final int gridCount;

  HeroGridView({required this.gridCount});

  getMainHeroAttr(mainAttr) {
    switch (mainAttr) {
      case 'Strength':
        {
          return 'images/attributes/hero_strength.png';
        }
      case 'Agility':
        {
          return 'images/attributes/hero_agility.png';
        }
      case 'Intelligence':
        {
          return 'images/attributes/hero_intelligence.png';
        }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
        isAlwaysShown: true,
        child: Padding(
          padding: EdgeInsets.all(24.0),
          child: GridView.count(
            crossAxisCount: gridCount,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            children: allHeroesList.map((hero) {
              return Material(
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HeroDetailScreen(hero: hero);
                    }));
                  },
                  child: AspectRatio(
                    aspectRatio: 16 / 9,
                    child: Card(
                      child: Stack(
                        fit: StackFit.expand,
                        children: [
                          Image.asset(
                            hero.imageAsset,
                            fit: BoxFit.fill,
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 8.0),
                                  child: Image.asset(
                                    getMainHeroAttr(hero.mainAttr),
                                    width: 15,
                                    height: 15,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    hero.name.toUpperCase(),
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold),
                                    overflow: TextOverflow.visible,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
        ));
  }
}
