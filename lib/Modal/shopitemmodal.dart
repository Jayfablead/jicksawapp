class shopitemModal {
  String? status;
  List<AllItems>? allItems;

  shopitemModal({this.status, this.allItems});

  shopitemModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['all_items'] != null) {
      allItems = <AllItems>[];
      json['all_items'].forEach((v) {
        allItems!.add(new AllItems.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.allItems != null) {
      data['all_items'] = this.allItems!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllItems {
  String? itemId;
  String? itemLogo;
  String? itemName;
  String? ratings;
  String? price;

  AllItems(
      {this.itemId, this.itemLogo, this.itemName, this.ratings, this.price});

  AllItems.fromJson(Map<String, dynamic> json) {
    itemId = json['item_id'];
    itemLogo = json['item_logo'];
    itemName = json['item_name'];
    ratings = json['ratings'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['item_id'] = this.itemId;
    data['item_logo'] = this.itemLogo;
    data['item_name'] = this.itemName;
    data['ratings'] = this.ratings;
    data['price'] = this.price;
    return data;
  }
}
