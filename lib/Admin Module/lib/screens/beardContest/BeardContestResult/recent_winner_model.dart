class ResentContestWinnerModel {
  ResentContestWinnerModel({
    required this.winners,
  });
  late final Winners winners;

  ResentContestWinnerModel.fromJson(Map<String, dynamic> json){
    winners = Winners.fromJson(json['winners']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['winners'] = winners.toJson();
    return _data;
  }
}

class Winners {
  Winners({
    required this.id,
    required this.barberId,
    required this.picture,
    required this.votes,
  });
  late final String id;
  late final BarberId barberId;
  late final String picture;
  late final int votes;

  Winners.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    barberId = BarberId.fromJson(json['barberId']);
    picture = json['picture'];
    votes = json['votes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['barberId'] = barberId.toJson();
    _data['picture'] = picture;
    _data['votes'] = votes;
    return _data;
  }
}

class BarberId {
  BarberId({
    required this.id,
    required this.email,
  });
  late final String id;
  late final String email;

  BarberId.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    email = json['email'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['email'] = email;
    return _data;
  }
}