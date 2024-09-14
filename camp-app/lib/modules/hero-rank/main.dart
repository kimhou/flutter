import 'package:camp_app/modules/hero-rank/list_item_model.dart';
import 'package:flutter/material.dart';
import '../../service/hero_rank.dart';
import 'list_item.dart';

class HeroRank extends StatefulWidget {
  const HeroRank({Key? key}) : super(key: key);

  @override
  State<HeroRank> createState() => _HeroRankState();
}

class _HeroRankState extends State<HeroRank> {
  @override
  void initState() {
    super.initState();
  }

  Future<List<dynamic>> _fetchHeroes() async {
    final heroService = HeroRankService();
    try {
      final list = await heroService.getHeroRanking();
      return list;
    } catch (e) {
      debugPrint(e.toString());
    }
    return [];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('英雄排行')),
      body: FutureBuilder(
        future: _fetchHeroes(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }
          if (snapshot.hasError) {
            return Center(child: Text(snapshot.error.toString()));
          }
          if (snapshot.data == null || snapshot.data!.isEmpty) {
            return const Center(child: Text('没有数据'));
          }
          debugPrint('data: ${snapshot.data?.toString()}');
          return ListView.builder(
            itemCount: snapshot.data?.length ?? 0,
            itemBuilder: (context, index) {
              return HeroListItem(
                  itemData:
                      HeroRankListItemModel.fromJson(snapshot.data?[index]));
            },
          );
        },
      ),
    );
  }
}
