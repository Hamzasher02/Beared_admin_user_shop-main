class AddStaffModel {
  AddStaffModel({
    required this.message,
     this.resetToken,
  });
  late final String message;
  late final String? resetToken;

  AddStaffModel.fromJson(Map<String, dynamic> json){
    message = json['message'];
    resetToken = json['resetToken'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['message'] = message;
    _data['resetToken'] = resetToken;
    return _data;
  }
}