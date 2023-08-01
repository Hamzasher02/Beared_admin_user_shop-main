class UserMemberModel {
  UserMemberModel({
    required this.members,
  });
  late final List<Members> members;

  UserMemberModel.fromJson(Map<String, dynamic> json){
    members = List.from(json['members']).map((e)=>Members.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['members'] = members.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Members {
  Members({
    required this.id,
    required this.email,
  });
  late final String id;
  late final String email;

  Members.fromJson(Map<String, dynamic> json){
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