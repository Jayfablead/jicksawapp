class CatModal {
  String? status;
  List<AllCategories>? allCategories;

  CatModal({this.status, this.allCategories});

  CatModal.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    if (json['all_categories'] != null) {
      allCategories = <AllCategories>[];
      json['all_categories'].forEach((v) {
        allCategories!.add(new AllCategories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['status'] = this.status;
    if (this.allCategories != null) {
      data['all_categories'] =
          this.allCategories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AllCategories {
  String? id;
  String? catagoryName;
  String? createdAt;

  AllCategories({this.id, this.catagoryName, this.createdAt});

  AllCategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    catagoryName = json['catagory_name'];
    createdAt = json['created_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['catagory_name'] = this.catagoryName;
    data['created_at'] = this.createdAt;
    return data;
  }
}
