class HeroRankListItemModel {
  /// 英雄id
  int heroId;

  /// 禁用率
  double banRate;

  /// 出场率
  double showRate;

  /// 胜率
  double winRate;

  /// 英雄排名
  String tRank;

  /// 开始阶段
  int beginPhase;

  /// 中期阶段
  int midPhase;

  /// 结束阶段
  int endPhase;

  /// 击杀数
  int killNum;

  /// 输出
  int output;

  /// 金钱
  int money;

  /// 金钱每分钟
  int moneyPerMin;

  /// 承受伤害
  int suffer;

  /// 助攻
  int assist;

  /// 塔伤害
  int towerDamage;

  /// 塔数
  int towerNum;

  /// mvp
  int mvp;

  /// 黄金时间
  int goldPlay;

  /// 英雄信息
  Map<String, dynamic> heroInfo;

  /// 选择
  String pick;

  /// 禁用
  String ban;

  HeroRankListItemModel({
    required this.heroId,
    required this.banRate,
    required this.showRate,
    required this.winRate,
    required this.tRank,
    required this.beginPhase,
    required this.midPhase,
    required this.endPhase,
    required this.killNum,
    required this.output,
    required this.money,
    required this.moneyPerMin,
    required this.suffer,
    required this.assist,
    required this.towerDamage,
    required this.towerNum,
    required this.mvp,
    required this.goldPlay,
    required this.heroInfo,
    required this.pick,
    required this.ban,
  });

  factory HeroRankListItemModel.fromJson(Map<String, dynamic> json) {
    return HeroRankListItemModel(
      heroId: json['heroId'],
      banRate: json['banRate'].toDouble(),
      showRate: json['showRate'].toDouble(),
      winRate: json['winRate'].toDouble(),
      tRank: json['tRank'],
      beginPhase: json['beginPhase'],
      midPhase: json['midPhase'],
      endPhase: json['endPhase'],
      killNum: json['killNum'],
      output: json['output'],
      money: json['money'],
      moneyPerMin: json['moneyPerMin'],
      suffer: json['suffer'],
      assist: json['assist'],
      towerDamage: json['towerDamage'],
      towerNum: json['towerNum'],
      mvp: json['mvp'],
      goldPlay: json['goldPlay'],
      heroInfo: json['heroInfo'],
      pick: json['pick'],
      ban: json['ban'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'heroId': heroId,
      'banRate': banRate,
      'showRate': showRate,
      'winRate': winRate,
      'tRank': tRank,
      'beginPhase': beginPhase,
      'midPhase': midPhase,
      'endPhase': endPhase,
      'killNum': killNum,
      'output': output,
      'money': money,
      'moneyPerMin': moneyPerMin,
      'suffer': suffer,
      'assist': assist,
      'towerDamage': towerDamage,
      'towerNum': towerNum,
      'mvp': mvp,
      'goldPlay': goldPlay,
      'heroInfo': heroInfo,
      'pick': pick,
      'ban': ban,
    };
  }
}
