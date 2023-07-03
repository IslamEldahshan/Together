class LoginModel {
  UserData? userData;
  int? statusCode;
  String? token;


  LoginModel.fromJson(Map<String, dynamic> json) {
    userData = json['user_data'] != null
        ? UserData.fromJson(json['user_data'])
        : null;
    statusCode = json['status_code'];
    token = json['token'];
  }
}

class UserData {
  int? id;
  String? userRole;
  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userRole = json['user_role'];
  }
}