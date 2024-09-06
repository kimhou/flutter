import 'package:flutter/material.dart';
import '../hero-rank/main.dart';

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
        body: Center(
            child: ElevatedButton(
          child: Text('英雄排行'),
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => HeroRank()));
          },
        )));
  }
}
