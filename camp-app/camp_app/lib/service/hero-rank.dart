import 'package:dio/dio.dart';

class HeroRankService {
  loadHeroRank() async {
    Response response = await Dio()
        .post('https://kohcamp.qq.com/hero/getsharepagedetailranklistbyid');
    return response;
  }
}
