class UserProfileModel {
  Data? data;
  int? statusCode;

  UserProfileModel.fromJson(Map<String, dynamic> json) {
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
    statusCode = json['status_code'];
  }
}


class Data {
  int? id;
  String? name;
  String? email;
  String? location;
  String? phone;
  String? natId;
  String? avatar;

  Data.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    location = json['location'];
    phone = json['phone'];
    natId = json['nat_id'];
    avatar = json['avatar'];
  }

}