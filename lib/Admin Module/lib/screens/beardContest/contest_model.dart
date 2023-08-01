class BeardContestModel {
  BeardContestModel({
    required this.participants,
  });
  late final List<Participants> participants;

  BeardContestModel.fromJson(Map<String, dynamic> json){
    participants = List.from(json['participants']).map((e)=>Participants.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['participants'] = participants.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Participants {
  Participants({
    required this.id,
    this.barberId,
    required this.picture,
    required this.votes,
  });
  late final String id;
  late final Null barberId;
  late final String picture;
  late final int votes;

  Participants.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    barberId = null;
    picture = json['picture'];
    votes = json['votes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['barberId'] = barberId;
    _data['picture'] = picture;
    _data['votes'] = votes;
    return _data;
  }
}