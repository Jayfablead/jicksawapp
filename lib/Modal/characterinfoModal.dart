// {
// "status": "success",
// "game_details": {
// "product_id": "17",
// "product_name": "Lion",
// "product_desc": "this is lion ",
// "product_price": "40",
// "product_points": "4000",
// "product_multi_img": [
// "http://jigsaw.fableadtechnolabs.com/assets/shop_images/download (2).jfif",
// "http://jigsaw.fableadtechnolabs.com/assets/shop_images/download (1).jfif"
// ],
// "product_rating": null,
// "prodcut_img": "http://jigsaw.fableadtechnolabs.com/assets/shop_images/2.png",
// "bg_color": "#fbbdff",
// "bg_color_border": "#8800ad"
// }
// }
class characterinfoModal {
  String? status;
  GameDetails? gameDetails;

  characterinfoModal({this.status, this.gameDetails});

  characterinfoModal.fromJson(Map<String, dynamic> json) {
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
  String? prodcutImg;
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
        this.prodcutImg,
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
    prodcutImg = json['prodcut_img'];
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
    data['prodcut_img'] = this.prodcutImg;
    data['bg_color'] = this.bgColor;
    data['bg_color_border'] = this.bgColorBorder;
    return data;
  }
}

