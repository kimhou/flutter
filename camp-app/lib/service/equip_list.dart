import './base.dart';

class HeroRankService extends BaseService {
  Future<List<dynamic>> getHeroRanking() async {
    dynamic rst = await request(
        'https://kohcamp.qq.com/gametoolbox/equip/allequipinfo',
        {"h5Get": 1, "cSystem": "ios", "isPre": true});
    List<dynamic> list = rst['data'];
    return list;
  }
}
