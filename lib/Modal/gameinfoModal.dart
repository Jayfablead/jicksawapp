class gameinfoModal {
  String? status;
  GameDetails? gameDetails;

  gameinfoModal({this.status, this.gameDetails});

  gameinfoModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    gameDetails = json['game_details'] != null
        ? new GameDetails.fromJson(json['game_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.gameDetails != null) {
      data['game_details'] = this.gameDetails!.toJson();
    }
    return data;
  }
}

class GameDetails {
  String? productId;
  String? productBrand;
  String? productName;
  String? productDesc;
  String? productPrice;
  String? productPoints;
  List<String>? productMultiImg;
  String? productRating;
  String? productImg;
  String? bgColor;
  String? bgColorBorder;

  GameDetails(
      {this.productId,
        this.productBrand,
        this.productName,
        this.productDesc,
        this.productPrice,
        this.productPoints,
        this.productMultiImg,
        this.productRating,
        this.productImg,
        this.bgColor,
        this.bgColorBorder});

  GameDetails.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    productBrand = json['product_brand'];
    productName = json['product_name'];
    productDesc = json['product_desc'];
    productPrice = json['product_price'];
    productPoints = json['product_points'];
    productMultiImg = json['product_multi_img'].cast<String>();
    productRating = json['product_rating'];
    productImg = json['product_img'];
    bgColor = json['bg_color'];
    bgColorBorder = json['bg_color_border'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['product_brand'] = this.productBrand;
    data['product_name'] = this.productName;
    data['product_desc'] = this.productDesc;
    data['product_price'] = this.productPrice;
    data['product_points'] = this.productPoints;
    data['product_multi_img'] = this.productMultiImg;
    data['product_rating'] = this.productRating;
    data['product_img'] = this.productImg;
    data['bg_color'] = this.bgColor;
    data['bg_color_border'] = this.bgColorBorder;
    return data;
  }
}
