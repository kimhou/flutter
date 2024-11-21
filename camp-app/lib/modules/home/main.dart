import 'package:camp_app/modules/equip-list/main.dart';
import 'package:flutter/material.dart';
import '../hero-rank/main.dart';
import '../inherited/main.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('王者荣耀')),
        body: Column(
          children: [
            ElevatedButton(
              child: Text('英雄排行'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => HeroRank()));
              },
            ),
            ElevatedButton(
              child: Text('Inherited Test'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Inherited()));
              },
            ),
            ElevatedButton(
              child: Text('Provider Test'),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => EquipList()));
              },
            )
          ],
        ));
  }
}
