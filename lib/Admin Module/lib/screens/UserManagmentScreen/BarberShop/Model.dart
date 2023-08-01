class UserBaraberShopModel {
  UserBaraberShopModel({
    required this.barbers,
  });
  late final List<Barbers> barbers;

  UserBaraberShopModel.fromJson(Map<String, dynamic> json){
    barbers = List.from(json['barbers']).map((e)=>Barbers.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['barbers'] = barbers.map((e)=>e.toJson()).toList();
    return _data;
  }
}
class Barbers {
  Barbers({
    required this.id,
    this.barberId,
    required this.name,
    required this.email,
    required this.profilePicture,
  });
  late final String id;
  late final BarberId? barberId;
  late final String name;
  late final String email;
  late final String profilePicture;

  Barbers.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    barberId = null;
    name = json['name'];
    email = json['email'];
    profilePicture = json['profilePicture'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['barberId'] = barberId;
    _data['name'] = name;
    _data['email'] = email;
    _data['profilePicture'] = profilePicture;
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