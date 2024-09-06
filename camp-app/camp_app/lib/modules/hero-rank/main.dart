import 'package:flutter/material.dart';

class HeroRank extends StatefulWidget {
  const HeroRank({Key? key}) : super(key: key);

  @override
  _HeroRankState createState() => _HeroRankState();
}

class _HeroRankState extends State<HeroRank> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('英雄排行')),
      body: const Center(child: Text('英雄排行')),
    );
  }
}
