class ProductDetailModel {
  String? name;
  String? price;
  String? image;
  String? category;
  double? rating;
  String? prodId;
  String? unitValue;
  String? unitName;
  int? qty;
  double? itemPrice;
  double? totalPrice;

  ProductDetailModel({
    this.name,
    this.price,
    this.image,
    this.category,
    this.rating,
    this.prodId,
    this.unitValue,
    this.unitName,
    this.qty,
    this.itemPrice,
    this.totalPrice,
  });

  factory ProductDetailModel.fromJson(Map<String, dynamic> json) {
    return ProductDetailModel(
      name: json['name'],
      price: json['price'],
      image: json['image'],
      category: json['category'],
      rating: json['rating']?.toDouble(),
      prodId: json['prodId'],
      unitValue: json['unitValue'],
      unitName: json['unitName'],
      qty: json['qty'],
      itemPrice: json['itemPrice']?.toDouble(),
      totalPrice: json['totalPrice']?.toDouble(),
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'name': name,
      'price': price,
      'image': image,
      'category': category,
      'rating': rating,
      'prodId': prodId,
      'unitValue': unitValue,
      'unitName': unitName,
      'qty': qty,
      'itemPrice': itemPrice,
      'totalPrice': totalPrice,
    };
  }
}
