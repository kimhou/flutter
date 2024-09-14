import 'package:camp_app/modules/hero-rank/list_item_model.dart';
import 'package:flutter/material.dart';

class HeroListItem extends StatelessWidget {
  final HeroRankListItemModel itemData;

  const HeroListItem({
    Key? key,
    required this.itemData,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
      child: Row(
        children: [
          CircleAvatar(
            backgroundImage: NetworkImage(itemData.heroInfo['heroIcon']),
          ),
          const SizedBox(width: 12),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                itemData.heroInfo['heroName'],
                style:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              Text(itemData.heroInfo['heroCareer']),
            ],
          ),
          Expanded(
            flex: 2,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Text(
                  itemData.tRank,
                  style: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
                const SizedBox(width: 12),
                Text('2'),
                Text('3'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
