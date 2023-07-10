class pointshopModal {
  String? status;
  List<Points>? points;

  pointshopModal({this.status, this.points});

  pointshopModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['points'] != null) {
      points = <Points>[];
      json['points'].forEach((v) {
        points!.add(new Points.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.points != null) {
      data['points'] = this.points!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Points {
  String? productId;
  String? productName;
  String? productPrice;
  String? productImg;
  String? bgColor;
  String? bgColorBorder;

  Points(
      {this.productId,
        this.productName,
        this.productPrice,
        this.productImg,
        this.bgColor,
        this.bgColorBorder});

  Points.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    productName = json['product_name'];
    productPrice = json['product_price'];
    productImg = json['product_img'];
    bgColor = json['bg_color'];
    bgColorBorder = json['bg_color_border'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['product_name'] = this.productName;
    data['product_price'] = this.productPrice;
    data['product_img'] = this.productImg;
    data['bg_color'] = this.bgColor;
    data['bg_color_border'] = this.bgColorBorder;
    return data;
  }
}
