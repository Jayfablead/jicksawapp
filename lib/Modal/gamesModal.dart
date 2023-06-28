class allgamesshopModal {
  String? status;
  List<Games>? games;

  allgamesshopModal({this.status, this.games});

  allgamesshopModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['games'] != null) {
      games = <Games>[];
      json['games'].forEach((v) {
        games!.add(new Games.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.games != null) {
      data['games'] = this.games!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Games {
  String? productId;
  String? productName;
  String? productPrice;
  String? productPoints;
  String? productRating;
  String? prodcutImg;
  String? bgColor;
  String? bgColorBorder;

  Games(
      {this.productId,
        this.productName,
        this.productPrice,
        this.productPoints,
        this.productRating,
        this.prodcutImg,
        this.bgColor,
        this.bgColorBorder});

  Games.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    productName = json['product_name'];
    productPrice = json['product_price'];
    productPoints = json['product_points'];
    productRating = json['product_rating'];
    prodcutImg = json['prodcut_img'];
    bgColor = json['bg_color'];
    bgColorBorder = json['bg_color_border'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['product_name'] = this.productName;
    data['product_price'] = this.productPrice;
    data['product_points'] = this.productPoints;
    data['product_rating'] = this.productRating;
    data['prodcut_img'] = this.prodcutImg;
    data['bg_color'] = this.bgColor;
    data['bg_color_border'] = this.bgColorBorder;
    return data;
  }
}
