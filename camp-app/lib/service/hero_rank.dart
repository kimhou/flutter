import './base.dart';

class HeroRankService extends BaseService {
  Future<List<dynamic>> getHeroRanking() async {
    dynamic rst = await request(
        'https://kohcamp.qq.com/hero/getsharepagedetailranklistbyid', {
      "cSystem": "android",
      "h5Get": 1,
      "rankId": 0,
      "position": 0,
      "segment": 1,
      "bottomTab": ""
    });
    List<dynamic> list = rst['data']['list'];
    return list;
  }
}

/**
 * 
 * 
 * curl 'https://kohcamp.qq.com/hero/getsharepagedetailranklistbyid' \
  -H 'accept: application/json, text/plain, ' \
  -H 'accept-encrypt;' \
  -H 'accept-language: zh-CN,zh;q=0.9,en;q=0.8,ja;q=0.7,zh-TW;q=0.6' \
  -H 'algorithm;' \
  -H 'appid;' \
  -H 'areaid;' \
  -H 'cache-control: no-cache' \
  -H 'camproleid;' \
  -H 'cclientversionname;' \
  -H 'content-type: application/json' \
  -H 'csystem: android' \
  -H 'encode;' \
  -H 'gameid;' \
  -H 'gameopenid;' \
  -H 'h5get: 1' \
  -H 'msdktoken: ftfjxAuZ' \
  -H 'noencrypt: 1' \
  -H 'openid;' \
  -H 'origin: https://camp.qq.com' \
  -H 'pragma: no-cache' \
  -H 'priority: u=1, i' \
  -H 'referer: https://camp.qq.com/' \
  -H 'roleid;' \
  -H 'sec-ch-ua: "Not)A;Brand";v="99", "Google Chrome";v="127", "Chromium";v="127"' \
  -H 'sec-ch-ua-mobile: ?1' \
  -H 'sec-ch-ua-platform: "Android"' \
  -H 'sec-fetch-dest: empty' \
  -H 'sec-fetch-mode: cors' \
  -H 'sec-fetch-site: same-site' \
  -H 'serverid;' \
  -H 'sig;' \
  -H 'source;' \
  -H 'timestamp;' \
  -H 'user-agent: Mozilla/5.0 (Linux; Android 6.0; Nexus 5 Build/MRA58N) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/127.0.0.0 Mobile Safari/537.36' \
  -H 'userid;' \
  -H 'x-client-proto: https' \
  --data-raw '{"cSystem":"android","h5Get":1,"rankId":0,"position":0,"segment":1,"bottomTab":""}'
 */
