class BlockUserBaraberShopModel {
  BlockUserBaraberShopModel({
    required this.isBlocked,
  });
  late final bool isBlocked;

  BlockUserBaraberShopModel.fromJson(Map<String, dynamic> json){
    isBlocked = json['isBlocked'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['isBlocked'] = isBlocked;
    return _data;
  }
}