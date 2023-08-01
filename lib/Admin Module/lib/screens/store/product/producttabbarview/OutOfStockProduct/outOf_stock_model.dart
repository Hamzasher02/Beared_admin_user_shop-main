class OutOfStockModel {
  OutOfStockModel({
    required this.products,
  });
  late final List<Products> products;

  OutOfStockModel.fromJson(Map<String, dynamic> json){
    products = List.from(json['products']).map((e)=>Products.fromJson(e)).toList();
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['products'] = products.map((e)=>e.toJson()).toList();
    return _data;
  }
}

class Products {
  Products({
    required this.id,
    required this.name,
    required this.price,
    required this.stock,
  });
  late final String id;
  late final String name;
  late final int price;
  late final int stock;

  Products.fromJson(Map<String, dynamic> json){
    id = json['_id'];
    name = json['name'];
    price = json['price'];
    stock = json['stock'];
  }

  Map<String, dynamic> toJson() {
    final _data = <String, dynamic>{};
    _data['_id'] = id;
    _data['name'] = name;
    _data['price'] = price;
    _data['stock'] = stock;
    return _data;
  }
}