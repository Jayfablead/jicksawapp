class allpurchasedModal {
  String? status;
  List<AllOrders>? allOrders;

  allpurchasedModal({this.status, this.allOrders});

  allpurchasedModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['all_orders'] != null) {
      allOrders = <AllOrders>[];
      json['all_orders'].forEach((v) {
        allOrders!.add(new AllOrders.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.allOrders != null) {
      data['all_orders'] = this.allOrders!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllOrders {
  String? orderId;
  String? orderNo;
  String? transactionId;
  String? userId;
  String? itemId;
  String? itemName;
  String? price;
  String? paymentDate;
  String? createdAt;
  String? id;
  String? uid;
  String? phone;
  String? age;
  String? address;
  String? about;
  String? profilePic;
  String? brand;
  String? itemLogo;
  String? ratings;
  String? description;
  String? screenshots;

  AllOrders(
      {this.orderId,
        this.orderNo,
        this.transactionId,
        this.userId,
        this.itemId,
        this.itemName,
        this.price,
        this.paymentDate,
        this.createdAt,
        this.id,
        this.uid,
        this.phone,
        this.age,
        this.address,
        this.about,
        this.profilePic,
        this.brand,
        this.itemLogo,
        this.ratings,
        this.description,
        this.screenshots});

  AllOrders.fromJson(Map<String, dynamic> json) {
    orderId = json['order_id'];
    orderNo = json['order_no'];
    transactionId = json['transaction_id'];
    userId = json['user_id'];
    itemId = json['item_id'];
    itemName = json['item_name'];
    price = json['price'];
    paymentDate = json['payment_date'];
    createdAt = json['created_at'];
    id = json['id'];
    uid = json['uid'];
    phone = json['phone'];
    age = json['age'];
    address = json['address'];
    about = json['about'];
    profilePic = json['profile_pic'];
    brand = json['brand'];
    itemLogo = json['item_logo'];
    ratings = json['ratings'];
    description = json['description'];
    screenshots = json['screenshots'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['order_id'] = this.orderId;
    data['order_no'] = this.orderNo;
    data['transaction_id'] = this.transactionId;
    data['user_id'] = this.userId;
    data['item_id'] = this.itemId;
    data['item_name'] = this.itemName;
    data['price'] = this.price;
    data['payment_date'] = this.paymentDate;
    data['created_at'] = this.createdAt;
    data['id'] = this.id;
    data['uid'] = this.uid;
    data['phone'] = this.phone;
    data['age'] = this.age;
    data['address'] = this.address;
    data['about'] = this.about;
    data['profile_pic'] = this.profilePic;
    data['brand'] = this.brand;
    data['item_logo'] = this.itemLogo;
    data['ratings'] = this.ratings;
    data['description'] = this.description;
    data['screenshots'] = this.screenshots;
    return data;
  }
}
