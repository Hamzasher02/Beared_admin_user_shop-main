class UpdateProfileModel {
  UpdateProfileModel({
    required this.message,
    required this.profile,
  });
  late final String message;
  late final Profile profile;

  UpdateProfileModel.fromJson(Map<String, dynamic> json){
    message = json['message'];
    profile = Profile.fromJson(json['profile']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['profile'] = profile.toJson();
    return _data;
  }
}

class Profile {
  Profile({
    required this.id,
    required this.adminId,
    required this.name,
    required this.email,
    required this.profilePicture,
    required this.number,
    required this.V,
  });
  late final String id;
  late final String adminId;
  late final String name;
  late final String email;
  late final String profilePicture;
  late final String number;
  late final int V;

  Profile.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    adminId = json['adminId'];
    name = json['name'];
    email = json['email'];
    profilePicture = json['profilePicture'];
    number = json['number'];
    V = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['adminId'] = adminId;
    _data['name'] = name;
    _data['email'] = email;
    _data['profilePicture'] = profilePicture;
    _data['number'] = number;
    _data['__v'] = V;
    return _data;
  }
}