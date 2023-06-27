class categModal {
  String? status;
  List<AllCategories>? allCategories;

  categModal({this.status, this.allCategories});

  categModal.fromJson(Map<String, dynamic> json) {
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
  String? catagoryDesc;
  String? catagoryIcon;
  String? catagoryBg;
  String? catagoryButtonColor;

  AllCategories(
      {this.id,
        this.catagoryName,
        this.catagoryDesc,
        this.catagoryIcon,
        this.catagoryBg,
        this.catagoryButtonColor});

  AllCategories.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    catagoryName = json['catagory_name'];
    catagoryDesc = json['catagory_desc'];
    catagoryIcon = json['catagory_icon'];
    catagoryBg = json['catagory_bg'];
    catagoryButtonColor = json['catagory_button_color'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['catagory_name'] = this.catagoryName;
    data['catagory_desc'] = this.catagoryDesc;
    data['catagory_icon'] = this.catagoryIcon;
    data['catagory_bg'] = this.catagoryBg;
    data['catagory_button_color'] = this.catagoryButtonColor;
    return data;
  }
}
