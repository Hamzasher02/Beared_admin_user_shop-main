class PostDateModel {
  PostDateModel({
    required this.message,
    required this.contest,
  });
  late final String message;
  late final Contest contest;

  PostDateModel.fromJson(Map<String, dynamic> json){
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
  Contest({
    required this.startDate,
    required this.endDate,
    required this.id,
    required this.V,
  });
  late final String startDate;
  late final String endDate;
  late final String id;
  late final int V;

  Contest.fromJson(Map<String, dynamic> json){
    startDate = json['startDate'];
    endDate = json['endDate'];
    id = json['_id'];
    V = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['startDate'] = startDate;
    _data['endDate'] = endDate;
    _data['_id'] = id;
    _data['__v'] = V;
    return _data;
  }
}