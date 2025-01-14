class BannerModel {
  int? id;
  String? title;
  String? shortDes;
  String? price;
  String? image;
  int? productId;
  String? createdAt;
  String? updatedAt;

  BannerModel(
      {this.id,
        this.title,
        this.shortDes,
        this.price,
        this.image,
        this.productId,
        this.createdAt,
        this.updatedAt});

  BannerModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    shortDes = json['short_des'];
    price = json['price'];
    image = json['image'];
    productId = json['product_id'];
    createdAt = json['created_at'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    data['short_des'] = this.shortDes;
    data['price'] = this.price;
    data['image'] = this.image;
    data['product_id'] = this.productId;
    data['created_at'] = this.createdAt;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}
