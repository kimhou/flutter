import 'package:flutter/material.dart';

class HeroListItem extends StatelessWidget {
  final String heroName;
  final double rank;
  final String imageUrl;

  const HeroListItem({
    Key? key,
    required this.heroName,
    required this.rank,
    required this.imageUrl,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: CircleAvatar(
        backgroundImage: NetworkImage(imageUrl),
      ),
      title: Text(heroName),
      subtitle: Text('胜率: ${rank * 100}%'),
      trailing: Icon(Icons.chevron_right),
      onTap: () {
        // TODO: 实现点击事件，跳转到英雄详情页面
      },
    );
  }
}
