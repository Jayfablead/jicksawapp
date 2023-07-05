class searchPlayerModal {
  String? status;
  List<UserData>? userData;

  searchPlayerModal({this.status, this.userData});

  searchPlayerModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['user_data'] != null) {
      userData = <UserData>[];
      json['user_data'].forEach((v) {
        userData!.add(new UserData.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.userData != null) {
      data['user_data'] = this.userData!.map((v) => v.toJson()).toList();
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
  String? stripeCustId;
  String? createdAt;
  String? id;
  String? phone;
  String? age;
  String? address;
  String? about;
  String? profilePic;
  String? gamePoints;
  String? bgColor;
  String? bgBorderColor;
  String? characterImg;

  UserData(
      {this.uid,
        this.name,
        this.eMail,
        this.role,
        this.password,
        this.forgotPassKey,
        this.stripeCustId,
        this.createdAt,
        this.id,
        this.phone,
        this.age,
        this.address,
        this.about,
        this.profilePic,
        this.gamePoints,
        this.bgColor,
        this.bgBorderColor,
        this.characterImg});

  UserData.fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    name = json['name'];
    eMail = json['e_mail'];
    role = json['role'];
    password = json['password'];
    forgotPassKey = json['forgot_pass_key'];
    stripeCustId = json['stripe_cust_id'];
    createdAt = json['created_at'];
    id = json['id'];
    phone = json['phone'];
    age = json['age'];
    address = json['address'];
    about = json['about'];
    profilePic = json['profile_pic'];
    gamePoints = json['game_points'];
    bgColor = json['bg_color'];
    bgBorderColor = json['bg_border_color'];
    characterImg = json['character_img'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['uid'] = this.uid;
    data['name'] = this.name;
    data['e_mail'] = this.eMail;
    data['role'] = this.role;
    data['password'] = this.password;
    data['forgot_pass_key'] = this.forgotPassKey;
    data['stripe_cust_id'] = this.stripeCustId;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    data['phone'] = this.phone;
    data['age'] = this.age;
    data['address'] = this.address;
    data['about'] = this.about;
    data['profile_pic'] = this.profilePic;
    data['game_points'] = this.gamePoints;
    data['bg_color'] = this.bgColor;
    data['bg_border_color'] = this.bgBorderColor;
    data['character_img'] = this.characterImg;
    return data;
  }
}
