class HomeModel {
  List<Data>? data;
  int? statusCode;

  HomeModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(Data.fromJson(v));
      });
    }
    statusCode = json['status_code'];
  }

}


class Data {
  int? id;
  String? categoryName;
  String? donator;
  String? name;
  String? quantity;
  String? discription;
  String? image;
  List<String>? productImages;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryName = json['category_name'];
    donator = json['donator'];
    name = json['name'];
    quantity = json['quantity'];
    discription = json['discription'];
    image = json['image'];
    productImages = json['product_images'].cast<String>();
  }

}