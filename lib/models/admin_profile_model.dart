class AdminProfileModel {
  Data? data;
  int? statusCode;

  AdminProfileModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? new Data.fromJson(json['data']) : null;
    statusCode = json['status_code'];
  }
}

class Data {
  int? id;
  String? name;
  String? email;
  String? location;
  String? phone;
  String? avatar;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    location = json['location'];
    phone = json['phone'];
    avatar = json['avatar'];
  }

}