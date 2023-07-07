class VerifiedUserModel {
  bool? status;
  String? msg;


  VerifiedUserModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    msg = json['msg'];
  }
}