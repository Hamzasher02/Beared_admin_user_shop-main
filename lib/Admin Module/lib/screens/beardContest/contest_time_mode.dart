class ContestTimeModel {
  ContestTimeModel({
    required this.contests,
  });
  late final Contests contests;

  ContestTimeModel.fromJson(Map<String, dynamic> json){
    contests = Contests.fromJson(json['contests']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['contests'] = contests.toJson();
    return _data;
  }
}

class Contests {
  Contests({
    required this.id,
    required this.days,
    required this.hours,
    required this.minutes,
  });
  late final String id;
  late final int days;
  late final int hours;
  late final int minutes;

  Contests.fromJson(Map<String, dynamic> json){
    id = json['id'];
    days = json['days'];
    hours = json['hours'];
    minutes = json['minutes'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['id'] = id;
    _data['days'] = days;
    _data['hours'] = hours;
    _data['minutes'] = minutes;
    return _data;
  }
}