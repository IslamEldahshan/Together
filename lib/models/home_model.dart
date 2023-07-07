class HomeModel {
  List<Data>? data;
  int? statusCode;

  HomeModel.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <Data>[];
      json['data'].forEach((v) {
        data!.add(new Data.fromJson(v));
      });
    }
    statusCode = json['status_code'];
  }
}

class Data {
  int? id;
  String? categoryName;
  String? name;
  String? quantity;
  String? discription;
  String? image;
  List<String>? productImages;
  Donator? donator;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    categoryName = json['category_name'];
    name = json['name'];
    quantity = json['quantity'];
    discription = json['discription'];
    image = json['image'];
    productImages = json['product_images'].cast<String>();
    donator =
    json['donator'] != null ? new Donator.fromJson(json['donator']) : null;
  }
}

class Donator {
  int? donatorId;
  String? donatorName;
  String? donatorEmail;
  Null? donatorAvatar;
  String? verified;

  Donator.fromJson(Map<String, dynamic> json) {
    donatorId = json['donator_id'];
    donatorName = json['donator_name'];
    donatorEmail = json['donator_email'];
    donatorAvatar = json['donator_avatar'];
    verified = json['verified'];
  }
}