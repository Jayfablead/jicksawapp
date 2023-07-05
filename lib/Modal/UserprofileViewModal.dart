// {
// "status": "success",
// "user_info": {
// "uid": "85",
// "name": "Luffy",
// "e_mail": "monkeydluffy@gmail.com",
// "role": "2",
// "password": "202cb962ac59075b964b07152d234b70",
// "forgot_pass_key": null,
// "stripe_cust_id": "cus_OCX6grNOTjOopt",
// "created_at": "2023-07-03 15:09:10",
// "id": "64",
// "phone": "0987656788",
// "age": "20",
// "address": null,
// "about": "Monkey d luffy king of the pirates with his team on the way to grand line",
// "profile_pic": "http://jigsaw.fableadtechnolabs.com/assets/img/anime-one-piece-monkey-d-luffy-wallpaper-preview.jpg",
// "game_points": "400",
// "bg_color": "#d9f8c9",
// "bg_border_color": "#56b607",
// "character_img": "fox-6991096_640.webp",
// "rank": "0"
// }
// }

class UserProfileViewModal {
  String? status;
  UserInfo? userInfo;

  UserProfileViewModal({this.status, this.userInfo});

  UserProfileViewModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    userInfo = json['user_info'] != null
        ? new UserInfo.fromJson(json['user_info'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.userInfo != null) {
      data['user_info'] = this.userInfo!.toJson();
    }
    return data;
  }
}

class UserInfo {
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
  String? rank;

  UserInfo(
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
        this.characterImg,
        this.rank});

  UserInfo.fromJson(Map<String, dynamic> json) {
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
    rank = json['rank'];
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
    data['rank'] = this.rank;
    return data;
  }
}
