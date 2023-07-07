class GetRequestsModel {
  List<Data>? data;
  int? statusCode;


  GetRequestsModel.fromJson(Map<String, dynamic> json) {
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
  int? productId;
  String? productName;
  String? productDeliveryMethod;
  int? userId;
  String? userName;
  int? donatorId;
  String? donatorName;
  String? requestType;
  String? status;
  String? image;
  List<String>? productImages;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    productId = json['product_id'];
    productName = json['product_name'];
    productDeliveryMethod = json['product_delivery_method'];
    userId = json['user_id'];
    userName = json['user_name'];
    donatorId = json['donator_id'];
    donatorName = json['donator_name'];
    requestType = json['request_type'];
    status = json['status'];
    image = json['image'];
    productImages = json['product_images'].cast<String>();
  }

}