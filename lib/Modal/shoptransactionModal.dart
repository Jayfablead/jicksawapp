class shoptransactionModal {
  String? status;
  OrderDetails? orderDetails;

  shoptransactionModal({this.status, this.orderDetails});

  shoptransactionModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    orderDetails = json['order_details'] != null
        ? new OrderDetails.fromJson(json['order_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.orderDetails != null) {
      data['order_details'] = this.orderDetails!.toJson();
    }
    return data;
  }
}

class OrderDetails {
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
  String? characterImg;
  String? name;
  String? eMail;
  String? role;
  String? password;
  String? forgotPassKey;
  String? stripeCustId;
  String? productId;
  String? prodcutCatagoryId;
  String? productBrand;
  String? productName;
  String? productDesc;
  String? prodcutImg;
  String? productPrice;
  String? productPoints;
  String? bgColor;
  String? bgColorBorder;
  String? productShortVideo;
  String? productMultiImg;
  String? productRating;

  OrderDetails(
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
        this.characterImg,
        this.name,
        this.eMail,
        this.role,
        this.password,
        this.forgotPassKey,
        this.stripeCustId,
        this.productId,
        this.prodcutCatagoryId,
        this.productBrand,
        this.productName,
        this.productDesc,
        this.prodcutImg,
        this.productPrice,
        this.productPoints,
        this.bgColor,
        this.bgColorBorder,
        this.productShortVideo,
        this.productMultiImg,
        this.productRating});

  OrderDetails.fromJson(Map<String, dynamic> json) {
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
    characterImg = json['character_img'];
    name = json['name'];
    eMail = json['e_mail'];
    role = json['role'];
    password = json['password'];
    forgotPassKey = json['forgot_pass_key'];
    stripeCustId = json['stripe_cust_id'];
    productId = json['product_id'];
    prodcutCatagoryId = json['prodcut_catagory_id'];
    productBrand = json['product_brand'];
    productName = json['product_name'];
    productDesc = json['product_desc'];
    prodcutImg = json['prodcut_img'];
    productPrice = json['product_price'];
    productPoints = json['product_points'];
    bgColor = json['bg_color'];
    bgColorBorder = json['bg_color_border'];
    productShortVideo = json['product_short_video'];
    productMultiImg = json['product_multi_img'];
    productRating = json['product_rating'];
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
    data['character_img'] = this.characterImg;
    data['name'] = this.name;
    data['e_mail'] = this.eMail;
    data['role'] = this.role;
    data['password'] = this.password;
    data['forgot_pass_key'] = this.forgotPassKey;
    data['stripe_cust_id'] = this.stripeCustId;
    data['product_id'] = this.productId;
    data['prodcut_catagory_id'] = this.prodcutCatagoryId;
    data['product_brand'] = this.productBrand;
    data['product_name'] = this.productName;
    data['product_desc'] = this.productDesc;
    data['prodcut_img'] = this.prodcutImg;
    data['product_price'] = this.productPrice;
    data['product_points'] = this.productPoints;
    data['bg_color'] = this.bgColor;
    data['bg_color_border'] = this.bgColorBorder;
    data['product_short_video'] = this.productShortVideo;
    data['product_multi_img'] = this.productMultiImg;
    data['product_rating'] = this.productRating;
    return data;
  }
}
