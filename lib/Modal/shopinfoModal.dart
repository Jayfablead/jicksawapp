class shopinfoModal {
  String? status;
  ItemDetails? itemDetails;

  shopinfoModal({this.status, this.itemDetails});

  shopinfoModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    itemDetails = json['item_details'] != null
        ? new ItemDetails.fromJson(json['item_details'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.itemDetails != null) {
      data['item_details'] = this.itemDetails!.toJson();
    }
    return data;
  }
}

class ItemDetails {
  String? itemId;
  String? brand;
  String? itemLogo;
  String? itemName;
  String? ratings;
  String? description;
  String? price;
  List<String>? screenshots;
  String? createdAt;

  ItemDetails(
      {this.itemId,
        this.brand,
        this.itemLogo,
        this.itemName,
        this.ratings,
        this.description,
        this.price,
        this.screenshots,
        this.createdAt});

  ItemDetails.fromJson(Map<String, dynamic> json) {
    itemId = json['item_id'];
    brand = json['brand'];
    itemLogo = json['item_logo'];
    itemName = json['item_name'];
    ratings = json['ratings'];
    description = json['description'];
    price = json['price'];
    screenshots = json['screenshots'].cast<String>();
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item_id'] = this.itemId;
    data['brand'] = this.brand;
    data['item_logo'] = this.itemLogo;
    data['item_name'] = this.itemName;
    data['ratings'] = this.ratings;
    data['description'] = this.description;
    data['price'] = this.price;
    data['screenshots'] = this.screenshots;
    data['created_at'] = this.createdAt;
    return data;
  }
}
