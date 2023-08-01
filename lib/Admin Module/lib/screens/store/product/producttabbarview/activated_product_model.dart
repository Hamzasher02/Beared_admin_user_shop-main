class ActivatedProductModel {
  ActivatedProductModel({
    required this.product,
  });
  late final Product product;

  ActivatedProductModel.fromJson(Map<String, dynamic> json){
    product = Product.fromJson(json['product']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['product'] = product.toJson();
    return _data;
  }
}

class Product {
  Product({
    required this.id,
    required this.name,
    required this.description,
    required this.price,
    required this.photos,
    required this.deliveryCharges,
    required this.freeDelivery,
    required this.stock,
    required this.category,
    required this.isActive,
    required this.timestamp,
    required this.V,
  });
  late final String id;
  late final String name;
  late final String description;
  late final int price;
  late final List<String> photos;
  late final int deliveryCharges;
  late final bool freeDelivery;
  late final int stock;
  late final String category;
  late final bool isActive;
  late final String timestamp;
  late final int V;

  Product.fromJson(Map<String, dynamic> json){
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'];
    photos = List.castFrom<dynamic, String>(json['photos']);
    deliveryCharges = json['deliveryCharges'];
    freeDelivery = json['freeDelivery'];
    stock = json['stock'];
    category = json['category'];
    isActive = json['isActive'];
    timestamp = json['timestamp'];
    V = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['name'] = name;
    _data['description'] = description;
    _data['price'] = price;
    _data['photos'] = photos;
    _data['deliveryCharges'] = deliveryCharges;
    _data['freeDelivery'] = freeDelivery;
    _data['stock'] = stock;
    _data['category'] = category;
    _data['isActive'] = isActive;
    _data['timestamp'] = timestamp;
    _data['__v'] = V;
    return _data;
  }
}