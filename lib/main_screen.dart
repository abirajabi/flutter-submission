import 'package:flutter/material.dart';
import 'package:submission_dicoding/form_hero.dart';
import 'package:submission_dicoding/hero_detail_screen.dart';
import 'package:submission_dicoding/hero_list_screen.dart';
import 'model/const.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Dota 2 Heroes'),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    //
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return HeroListScreen();
                    }));
                  },
                  child: Text(
                    'Heroes list',
                    style: whiteText,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return primaryColor;
                    }),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 16.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) {
                      return FormHero();
                    }));
                  },
                  child: Text(
                    'Add new heroes',
                    style: whiteText,
                  ),
                  style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.resolveWith<Color>(
                        (Set<MaterialState> states) {
                      return primaryColor;
                    }),
                  ),
                ),
              ),
            ],
          ),
        ));
  }
}
