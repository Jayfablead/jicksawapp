class waitModal {
  String? status;
  String? message;
  UserInfo? userInfo;

  waitModal({this.status, this.message, this.userInfo});

  waitModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    userInfo = json['user_info'] != null
        ? new UserInfo.fromJson(json['user_info'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.userInfo != null) {
      data['user_info'] = this.userInfo!.toJson();
    }
    return data;
  }
}

class UserInfo {
  String? characterImg;
  String? name;

  UserInfo({this.characterImg, this.name});

  UserInfo.fromJson(Map<String, dynamic> json) {
    characterImg = json['character_img'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['character_img'] = this.characterImg;
    data['name'] = this.name;
    return data;
  }
}
