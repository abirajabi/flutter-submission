import 'package:flutter/material.dart';
import 'package:submission_dicoding/model/const.dart';
import 'package:submission_dicoding/model/heroes.dart';

class FormHero extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add new hero'),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
          color: Colors.white,
        ),
      ),
      body: NewHeroForm(),
    );
  }
}

class NewHeroForm extends StatefulWidget {
  const NewHeroForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return NewHeroState();
  }
}

class NewHeroState extends State<NewHeroForm> {
  final _formKey = GlobalKey<FormState>();
  List<String> _urls = [];

  TextEditingController txtHeroName = TextEditingController();
  String heroMainAttr = 'Strength';
  TextEditingController txtHeroBaseStr = TextEditingController();
  TextEditingController txtHeroGainStr = TextEditingController();
  TextEditingController txtHeroBaseAgi = TextEditingController();
  TextEditingController txtHeroGainAgi = TextEditingController();
  TextEditingController txtHeroBaseInt = TextEditingController();
  TextEditingController txtHeroGainInt = TextEditingController();
  TextEditingController txtImageAsset = TextEditingController();
  TextEditingController txtImageUrls = TextEditingController();
  TextEditingController txtHeroDesc = TextEditingController();

  @override
  void dispose() {
    txtHeroName.dispose();
    txtHeroBaseStr.dispose();
    txtHeroGainStr.dispose();
    txtHeroBaseAgi.dispose();
    txtHeroGainAgi.dispose();
    txtHeroBaseInt.dispose();
    txtHeroGainInt.dispose();
    txtImageAsset.dispose();
    txtImageUrls.dispose();
    txtHeroDesc.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Form(
        key: _formKey,
        child: Padding(
          padding: EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Hero name can\'t be empty';
                  }
                  return null;
                },
                controller: txtHeroName,
                decoration: InputDecoration(
                  hintText: 'Hero Name',
                  labelText: 'Enter hero name',
                ),
              ),
              SizedBox(height: 16.0),
              DropdownButton<String>(
                isExpanded: true,
                value: heroMainAttr,
                icon: Icon(Icons.arrow_drop_down),
                iconSize: 20,
                elevation: 16,
                onChanged: (String? newValue) {
                  setState(() {
                    heroMainAttr = newValue!;
                  });
                },
                items: <String>['Strength', 'Agility', 'Intelligence']
                    .map<DropdownMenuItem<String>>((String value) {
                  return DropdownMenuItem<String>(
                      value: value, child: Text(value));
                }).toList(),
              ),
              SizedBox(height: 16.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [],
              ),
              TextFormField(
                controller: txtHeroBaseStr,
                keyboardType: TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Str base required';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: 'Base strength', labelText: 'Base STR'),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: txtHeroGainStr,
                keyboardType: TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Str gain required';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: 'Gain strength', labelText: 'Gain STR'),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: txtHeroBaseAgi,
                keyboardType: TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Agi base required';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: 'Base agility', labelText: 'Base AGI'),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: txtHeroGainAgi,
                keyboardType: TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Agi gain required';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: 'Gain agility', labelText: 'Gain AGI'),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: txtHeroBaseInt,
                keyboardType: TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Int base required';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: 'Base intelligence', labelText: 'Base INT'),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: txtHeroGainInt,
                keyboardType: TextInputType.numberWithOptions(
                    signed: true, decimal: true),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Int gain required';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: 'Gain intelligence', labelText: 'Gain INT'),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: txtHeroDesc,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Hero lore required';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: 'Hero description', labelText: 'Hero Lore'),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: txtImageAsset,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Hero asset required';
                  }
                  return null;
                },
                decoration: InputDecoration(
                    hintText: 'Hero image in the asset folder',
                    labelText: 'Hero image'),
              ),
              SizedBox(height: 16.0),
              TextFormField(
                controller: txtImageUrls,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Hero assets required';
                  }
                  return null;
                },
                onFieldSubmitted: (text) {
                  setState(() {
                    _urls.add(text);
                    txtImageUrls.clear();
                    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                      content: Text(
                        'Url added',
                      ),
                    ));
                  });
                },
                decoration: InputDecoration(
                    hintText: 'Hero image using link address',
                    labelText: 'Hero abilities image'),
              ),
              ElevatedButton(
                  style: ButtonStyle(backgroundColor:
                      MaterialStateProperty.resolveWith<Color>(
                          (Set<MaterialState> states) {
                    return primaryColor;
                  })),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                        content: Text(
                          'Processing Input.',
                        ),
                      ));
                      // add new record to hero list
                      Heroes newHero = Heroes(
                          name: txtHeroName.text,
                          mainAttr: heroMainAttr,
                          strBase: double.parse(txtHeroBaseStr.text),
                          strGain: double.parse(txtHeroGainStr.text),
                          agiBase: double.parse(txtHeroBaseAgi.text),
                          agiGain: double.parse(txtHeroGainAgi.text),
                          intBase: double.parse(txtHeroBaseInt.text),
                          intGain: double.parse(txtHeroGainInt.text),
                          imageAsset: txtImageAsset.text,
                          imageUrls: _urls,
                          description: txtHeroDesc.text);
                      allHeroesList.add(newHero);
                    }
                  },
                  child: Text(
                    'Submit',
                    style: whiteText,
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
