class subsdataModal {
  String? status;
  String? message;
  AllSubs? allSubs;

  subsdataModal({this.status, this.message, this.allSubs});

  subsdataModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    allSubs = json['all_subs'] != null
        ? new AllSubs.fromJson(json['all_subs'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    data['message'] = this.message;
    if (this.allSubs != null) {
      data['all_subs'] = this.allSubs!.toJson();
    }
    return data;
  }
}

class AllSubs {
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
  int? planDays;
  String? productName;
  String? productId;

  AllSubs(
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
        this.productId});

  AllSubs.fromJson(Map<String, dynamic> json) {
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
    return data;
  }
}
