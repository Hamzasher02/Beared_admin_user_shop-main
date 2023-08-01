class ContestTimeUpdateModel {
  ContestTimeUpdateModel({
    required this.message,
    required this.contest,
  });
  late final String message;
  late final Contest contest;

  ContestTimeUpdateModel.fromJson(Map<String, dynamic> json){
    message = json['message'];
    contest = Contest.fromJson(json['contest']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['contest'] = contest.toJson();
    return _data;
  }
}

class Contest {
  Contest();

  Contest.fromJson(Map json);

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    return _data;
  }
}