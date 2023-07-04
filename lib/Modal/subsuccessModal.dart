class subssucessfullModal {
  String? status;
  ThankYou? thankYou;

  subssucessfullModal({this.status, this.thankYou});

  subssucessfullModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    thankYou = json['thank_you'] != null
        ? new ThankYou.fromJson(json['thank_you'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.thankYou != null) {
      data['thank_you'] = this.thankYou!.toJson();
    }
    return data;
  }
}

class ThankYou {
  String? id;
  String? userId;
  String? transactionNo;
  String? amount;
  String? status;
  String? createdAt;
  String? planId;
  String? transactionId;
  String? subsId;
  String? planStart;
  String? planEnd;
  String? planDays;
  String? productName;
  String? productId;
  UserDetail? userDetail;

  ThankYou(
      {this.id,
        this.userId,
        this.transactionNo,
        this.amount,
        this.status,
        this.createdAt,
        this.planId,
        this.transactionId,
        this.subsId,
        this.planStart,
        this.planEnd,
        this.planDays,
        this.productName,
        this.productId,
        this.userDetail});

  ThankYou.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    transactionNo = json['transaction_no'];
    amount = json['amount'];
    status = json['status'];
    createdAt = json['created_at'];
    planId = json['plan_id'];
    transactionId = json['transaction_id'];
    subsId = json['subs_id'];
    planStart = json['plan_start'];
    planEnd = json['plan_end'];
    planDays = json['plan_days'];
    productName = json['product_name'];
    productId = json['product_id'];
    userDetail = json['user_detail'] != null
        ? new UserDetail.fromJson(json['user_detail'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['user_id'] = this.userId;
    data['transaction_no'] = this.transactionNo;
    data['amount'] = this.amount;
    data['status'] = this.status;
    data['created_at'] = this.createdAt;
    data['plan_id'] = this.planId;
    data['transaction_id'] = this.transactionId;
    data['subs_id'] = this.subsId;
    data['plan_start'] = this.planStart;
    data['plan_end'] = this.planEnd;
    data['plan_days'] = this.planDays;
    data['product_name'] = this.productName;
    data['product_id'] = this.productId;
    if (this.userDetail != null) {
      data['user_detail'] = this.userDetail!.toJson();
    }
    return data;
  }
}

class UserDetail {
  String? name;
  String? eMail;
  String? uid;
  String? about;
  String? age;
  String? profilePic;

  UserDetail(
      {this.name, this.eMail, this.uid, this.about, this.age, this.profilePic});

  UserDetail.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    eMail = json['e_mail'];
    uid = json['uid'];
    about = json['about'];
    age = json['age'];
    profilePic = json['profile_pic'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['e_mail'] = this.eMail;
    data['uid'] = this.uid;
    data['about'] = this.about;
    data['age'] = this.age;
    data['profile_pic'] = this.profilePic;
    return data;
  }
}
