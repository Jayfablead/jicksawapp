class UserModal {
  String? message;
  String? status;
  UserData? userData;

  UserModal({this.message, this.status, this.userData});

  UserModal.fromJson(Map<dynamic, dynamic> json) {
    message = json['message'];
    status = json['status'];
    userData = json['user_data'] != null
        ? new UserData.fromJson(json['user_data'])
        : null;
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['message'] = this.message;
    data['status'] = this.status;
    if (this.userData != null) {
      data['user_data'] = this.userData!.toJson();
    }
    return data;
  }
}

class UserData {
  String? uid;
  String? name;
  String? eMail;
  String? role;
  String? password;
  String? forgotPassKey;
  String? createdAt;

  UserData(
      {this.uid,
        this.name,
        this.eMail,
        this.role,
        this.password,
        this.forgotPassKey,
        this.createdAt});

  UserData.fromJson(Map<dynamic, dynamic> json) {
    uid = json['uid'];
    name = json['name'];
    eMail = json['e_mail'];
    role = json['role'];
    password = json['password'];
    forgotPassKey = json['forgot_pass_key'];
    createdAt = json['created_at'];
  }

  Map<dynamic, dynamic> toJson() {
    final Map<dynamic, dynamic> data = new Map<dynamic, dynamic>();
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['e_mail'] = this.eMail;
    data['role'] = this.role;
    data['password'] = this.password;
    data['forgot_pass_key'] = this.forgotPassKey;
    data['created_at'] = this.createdAt;
    return data;
  }
}