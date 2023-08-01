class MemberBlockModel {
  MemberBlockModel({
    required this.isBlocked,
  });
  late final bool isBlocked;

  MemberBlockModel.fromJson(Map<String, dynamic> json){
    isBlocked = json['isBlocked'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['isBlocked'] = isBlocked;
    return _data;
  }
}