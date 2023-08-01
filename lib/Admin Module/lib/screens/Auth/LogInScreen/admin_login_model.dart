class AdminLoginModel {
  AdminLoginModel({
    required this.message,
    required this.user,
    required this.token,
  });
  late final String message;
  late final User user;
  late final String token;

  AdminLoginModel.fromJson(Map<String, dynamic> json){
    message = json['message'];
    user = User.fromJson(json['user']);
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['user'] = user.toJson();
    _data['token'] = token;
    return _data;
  }
}

class User {
  User({
    required this.id,
    required this.username,
    required this.email,
    required this.password,
    required this.cpassword,
    required this.role,
    required this.createdAt,
    required this.updatedAt,
    required this.V,
  });
  late final String id;
  late final String username;
  late final String email;
  late final String password;
  late final String cpassword;
  late final String role;
  late final String createdAt;
  late final String updatedAt;
  late final int V;

  User.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    username = json['username'];
    email = json['email'];
    password = json['password'];
    cpassword = json['cpassword'];
    role = json['role'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    V = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['username'] = username;
    _data['email'] = email;
    _data['password'] = password;
    _data['cpassword'] = cpassword;
    _data['role'] = role;
    _data['createdAt'] = createdAt;
    _data['updatedAt'] = updatedAt;
    _data['__v'] = V;
    return _data;
  }
}