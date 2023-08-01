class AddProductModel {
  AddProductModel({
    required this.success,
    required this.product,
  });
  late final bool success;
  late final Product product;

  AddProductModel.fromJson(Map<String, dynamic> json){
    success = json['success'];
    product = Product.fromJson(json['product']);
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['success'] = success;
    _data['product'] = product.toJson();
    return _data;
  }
}

class Product {
  Product({
    required this.name,
    required this.description,
    required this.price,
    required this.photos,
    required this.deliveryCharges,
    required this.freeDelivery,
    required this.stock,
    required this.category,
    required this.id,
    required this.V,
  });
  late final String name;
  late final String description;
  late final int price;
  late final List<dynamic> photos;
  late final int deliveryCharges;
  late final bool freeDelivery;
  late final int stock;
  late final String category;
  late final String id;
  late final int V;

  Product.fromJson(Map<String, dynamic> json){
    name = json['name'];
    description = json['description'];
    price = json['price'];
    photos = List.castFrom<dynamic, dynamic>(json['photos']);
    deliveryCharges = json['deliveryCharges'];
    freeDelivery = json['freeDelivery'];
    stock = json['stock'];
    category = json['category'];
    id = json['_id'];
    V = json['__v'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['name'] = name;
    _data['description'] = description;
    _data['price'] = price;
    _data['photos'] = photos;
    _data['deliveryCharges'] = deliveryCharges;
    _data['freeDelivery'] = freeDelivery;
    _data['stock'] = stock;
    _data['category'] = category;
    _data['_id'] = id;
    _data['__v'] = V;
    return _data;
  }
}