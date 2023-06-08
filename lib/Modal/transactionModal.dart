class TransactionModal {
  String? status;
  ThankYou? thankYou;

  TransactionModal({this.status, this.thankYou});

  TransactionModal.fromJson(Map<String, dynamic> json) {
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
  String? planStart;
  String? planEnd;
  String? planDays;
  String? productName;
  String? productId;

  ThankYou(
      {this.id,
        this.userId,
        this.transactionNo,
        this.amount,
        this.status,
        this.createdAt,
        this.planId,
        this.transactionId,
        this.planStart,
        this.planEnd,
        this.planDays,
        this.productName,
        this.productId});

  ThankYou.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userId = json['user_id'];
    transactionNo = json['transaction_no'];
    amount = json['amount'];
    status = json['status'];
    createdAt = json['created_at'];
    planId = json['plan_id'];
    transactionId = json['transaction_id'];
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
    data['plan_start'] = this.planStart;
    data['plan_end'] = this.planEnd;
    data['plan_days'] = this.planDays;
    data['product_name'] = this.productName;
    data['product_id'] = this.productId;
    return data;
  }
}
