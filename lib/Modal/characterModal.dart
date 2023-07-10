class allcharactershopModal {
  String? status;
  List<Characters>? characters;

  allcharactershopModal({this.status, this.characters});

  allcharactershopModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['characters'] != null) {
      characters = <Characters>[];
      json['characters'].forEach((v) {
        characters!.add(new Characters.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.characters != null) {
      data['characters'] = this.characters!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Characters {
  String? productId;
  String? productName;
  String? productPrice;
  String? productPoints;
  String? productDesc;
  String? productImg;
  String? bgColor;
  String? bgColorBorder;

  Characters(
      {this.productId,
        this.productName,
        this.productPrice,
        this.productPoints,
        this.productDesc,
        this.productImg,
        this.bgColor,
        this.bgColorBorder});

  Characters.fromJson(Map<String, dynamic> json) {
    productId = json['product_id'];
    productName = json['product_name'];
    productPrice = json['product_price'];
    productPoints = json['product_points'];
    productDesc = json['product_desc'];
    productImg = json['product_img'];
    bgColor = json['bg_color'];
    bgColorBorder = json['bg_color_border'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['product_id'] = this.productId;
    data['product_name'] = this.productName;
    data['product_price'] = this.productPrice;
    data['product_points'] = this.productPoints;
    data['product_desc'] = this.productDesc;
    data['product_img'] = this.productImg;
    data['bg_color'] = this.bgColor;
    data['bg_color_border'] = this.bgColorBorder;
    return data;
  }
}
